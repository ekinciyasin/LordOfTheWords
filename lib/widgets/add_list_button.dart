import 'package:flutter/material.dart';
import 'package:lord_of_the_words/db/user_words_db.dart';
import 'package:lord_of_the_words/models/question.dart';

class AddListButton extends StatelessWidget {
  AddListButton({
    // required this.userWords,
    required this.questions,
    required this.questionIndex,
  });

  // final UserWords? userWords;
  final List<Question>? questions;
  final int? questionIndex;
  Future addUserWord() async {
    final userWord = questions![questionIndex!];
    await UserWordsDatabase.instance.create(userWord);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      onPressed: () {
        addUserWord();
        //userWords!.addItem(questions![questionIndex!]);
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text(
            'Added word to your list!',
            textAlign: TextAlign.center,
          ),
          duration: Duration(seconds: 1),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () async {
              // userWords!.removeItem(questions![questionIndex!]);
              await UserWordsDatabase.instance
                  .delete(questions![questionIndex!].id!);
            },
          ),
        ));
      },
    );
  }
}
