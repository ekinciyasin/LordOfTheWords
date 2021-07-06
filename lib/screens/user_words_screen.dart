import 'package:flutter/material.dart';
import 'package:lord_of_the_words/db/user_words_db.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:lord_of_the_words/providers/questions.dart';
import 'package:lord_of_the_words/screens/edit_user_word.dart';
import 'package:lord_of_the_words/screens/question_screen.dart';
import 'package:lord_of_the_words/widgets/user_word_item.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class UserWordsScreen extends StatefulWidget {
  static const routeName = '/userWords';
  const UserWordsScreen({Key? key}) : super(key: key);

  @override
  _UserWordsScreenState createState() => _UserWordsScreenState();
}

class _UserWordsScreenState extends State<UserWordsScreen> {
  List<Question>? userWords;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();

    refreshUserWords();
  }

  @override
  void dispose() {
    UserWordsDatabase.instance.close();

    super.dispose();
  }

  Future refreshUserWords() async {
    setState(() => isLoading = true);

    this.userWords = await UserWordsDatabase.instance.readAllUserWords();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    // int maxScore = Provider.of<Char>(context, listen: false).maxScore ?? 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Words'),
          actions: [EditUserWordButton()],
        ),
        body: Center(
          child: FutureBuilder(
              future: UserWordsDatabase.instance.readAllUserWords(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Question>> snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                if (snapshot.data!.isEmpty)
                  return const Text("Your word list is empty");

                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          itemCount: userWords!.length,
                          itemBuilder: (ctx, i) =>
                              UserWordItem(userWords![i], refreshUserWords),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () async {
                          MyApp.counter = 0;

                          await Provider.of<Questions>(context, listen: false)
                              .playWithUserWords(userWords!);
                          Provider.of<Char>(context, listen: false)
                              .openedCharIndex
                              .clear();
                          Navigator.of(context)
                              .pushReplacementNamed(QuestionScreen.routeName);
                        },
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Play with your words'),
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class EditUserWordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
            EditUserWordScreen.routeName,
          );
        },
        icon: Icon(Icons.edit));
  }
}
