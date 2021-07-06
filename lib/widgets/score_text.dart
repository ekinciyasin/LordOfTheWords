import 'package:flutter/material.dart';
import 'package:lord_of_the_words/main.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:provider/provider.dart';

class ScoreText extends StatefulWidget {
  int charsLength;
  Dificulty dificulty;
  final Function speak;

  ScoreText(this.dificulty, this.charsLength, this.speak);

  @override
  _ScoreTextState createState() => _ScoreTextState();
}

class _ScoreTextState extends State<ScoreText> {
  @override
  Widget build(BuildContext context) {
    int multiplier = 25;
    if (widget.dificulty == Dificulty.HARD) {
      multiplier = 100;
    } else if (widget.dificulty == Dificulty.NORMAL) {
      multiplier = 75;
    }
    int openedCharIndex = Provider.of<Char>(context).openedCharIndex.length;
    if (openedCharIndex == widget.charsLength && MyApp.totalScoreFlag == true) {
      MyApp.totalScore += (widget.charsLength - MyApp.counter) * multiplier;
      //cevap doğru olduğunda cevap seslendirir.
      widget.speak(true);
      MyApp.totalScoreFlag = false;
    }

    Provider.of<Char>(context).loadTotalScoreFromSharedPref();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          color: Colors.blue[50],
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Column(
              children: [
                const Text('Total Score'),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return SlideTransition(
                      child: child,
                      position: Tween<Offset>(
                              begin: Offset(0.0, -0.5), end: Offset(0.0, 0.0))
                          .animate(animation),
                    );
                  },
                  child: Text(
                    MyApp.totalScore.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                    key: ValueKey<String>(
                      '${MyApp.totalScore}',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.blue[50],
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Column(
              children: [
                const Text('Word Point'),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return SlideTransition(
                      child: child,
                      position: Tween<Offset>(
                              begin: Offset(0.0, -0.5), end: Offset(0.0, 0.0))
                          .animate(animation),
                    );
                  },
                  child: Text(
                    '${(widget.charsLength - MyApp.counter) * multiplier}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    key: ValueKey<String>(
                      '${(widget.charsLength - MyApp.counter) * multiplier}',
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
