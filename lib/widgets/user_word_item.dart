import 'package:flutter/material.dart';
import 'package:lord_of_the_words/db/user_words_db.dart';
import 'package:lord_of_the_words/main.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:lord_of_the_words/providers/user_words.dart';
import 'package:provider/provider.dart';

class UserWordItem extends StatelessWidget {
  final Question question;
  final Function _callSetState;

  UserWordItem(this.question, this._callSetState);

  @override
  Widget build(BuildContext context) {
    MyApp.totalScore = 0;
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text('Are you sure?'),
                  content: Text(
                    'Do you want to remove the word form the list?',
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(ctx).pop(false);
                      },
                      child: Text('No'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(ctx).pop(true);
                      },
                      child: Text('Yes'),
                    ),
                  ],
                ));
      },
      onDismissed: (direction) async {
        Provider.of<UserWords>(context, listen: false).removeItem(question);
        await UserWordsDatabase.instance.delete(question.id!);
        _callSetState();
      },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text('${question.answer}'),
            subtitle: Text('${question.text}'),
          ),
        ),
      ),
    );
  }
}
