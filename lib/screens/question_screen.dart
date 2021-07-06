import 'package:flutter/material.dart';
import 'package:lord_of_the_words/main.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:lord_of_the_words/providers/questions.dart';

import 'package:lord_of_the_words/widgets/add_list_button.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lord_of_the_words/widgets/char_polygon.dart';
import 'package:lord_of_the_words/widgets/score_text.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatelessWidget {
  static const routeName = '/question';
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final questionsData = Provider.of<Questions>(context);
    final questions = questionsData.questionList;
    var questionIndex = questionsData.questionIndex;
    String difficultyLevel = questionsData.getDifficultyAsString(
        questions[questionIndex].difficulty ?? Dificulty.CUSTOM);
    var answerChars =
        questionsData.convertAnswerToCharsList(questions[questionIndex].answer);
    var charProvider = Provider.of<Char>(context, listen: false);
    var list = [for (var i = 0; i < answerChars.length; i += 1) i];
    if (charProvider.isContinue) {
      charProvider.listCharIndex = list;
    }

    _speak(String text) async {
      await flutterTts.setLanguage('en-US');
      await flutterTts.speak(text);
    }

    _answerSpeak(bool isCorrectAnswer) {
      if (isCorrectAnswer) {
        _speak(questions[questionIndex].answer);
      }
    }

    final appBar = AppBar(
      toolbarHeight: 40,
      centerTitle: true,
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Level: $difficultyLevel',
              style: TextStyle(fontSize: 16),
            ),
            Text(' - '),
            Text(
              'MaxScore: ${Provider.of<Char>(context, listen: false).maxScore ?? 0}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      actions: [
        AddListButton(questions: questions, questionIndex: questionIndex),
      ],
    );

    _getLetter() {
      if (MyApp.counter < answerChars.length) {
        MyApp.counter++;

        Provider.of<Char>(context, listen: false).generateRequestedChar();
      }
      return null;
    }

    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          child: questions.isEmpty
              ? Center(
                  child: const Text('You have no custom words'),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              color: Color(0xFF5AD4FC),
                              border: Border.all(color: Colors.grey, width: 3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 2.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            height: (mediaQuery.size.height -
                                    appBar.preferredSize.height -
                                    mediaQuery.padding.top) *
                                0.25,
                            width: double.infinity,
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 400),
                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                return SlideTransition(
                                  child: child,
                                  position: Tween<Offset>(
                                          begin: Offset(-1, 0),
                                          end: Offset.zero)
                                      .animate(animation),
                                );
                              },
                              child: AutoSizeText(
                                questions[questionIndex].text,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                key: ValueKey<String>(
                                    '${questions[questionIndex].text}'),
                                maxFontSize: 18,
                                minFontSize: 8,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () =>
                                  _speak(questions[questionIndex].text),
                              icon: Icon(
                                Icons.volume_up,
                                size: 28,
                              ))
                        ],
                      ),
                    ),
                    ScoreText(
                      questions[questionIndex].difficulty ?? Dificulty.EASY,
                      answerChars.length,
                      _answerSpeak,
                    ),
                    Divider(),
                    SizedBox(height: 5),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children:
                          answerChars.asMap().entries.map((MapEntry entry) {
                        return CharPolygon(
                          mediaQuery: mediaQuery,
                          answerChar: entry.value,
                          charsLength: answerChars.length,
                          answerIndex: entry.key,
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            child: const Text('Hint'),
                            onPressed: () {
                              _getLetter();

                              FocusScope.of(context).nearestScope;
                            }),
                        ElevatedButton(
                          child: Row(
                            children: [
                              const Text('Next Question'),
                              const Icon(Icons.navigate_next),
                            ],
                          ),
                          onPressed: () {
                            MyApp.totalScoreFlag = true;
                            questionsData.removeAndReloadQuestionList(
                                questions[questionIndex]);
                            MyApp.counter = 0;

                            Provider.of<Char>(context, listen: false)
                                .openedCharIndex
                                .clear();
                            questionsData.generateRandomQuestionIndex(context);
                          },
                        ),
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
