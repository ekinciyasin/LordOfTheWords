import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Char with ChangeNotifier {
  List listCharIndex = [];
  int? requestedCharIndex;
  List openedCharIndex = [];
  bool isCorrect = false;
  int trueCounter = 0;
  bool isContinue = true;
  List<String> chars = [];
  int numberOfRequestedChars = 0;
  SharedPreferences? _sharedPrefObject;
  int? maxScore;

  isCorrectChar(int answerIndex, String correctAnswer, String userAnswer,
      BuildContext context) {
    if (correctAnswer == userAnswer) {
      isCorrect = true;
      FocusScope.of(context).nextFocus();

      openedCharIndex.add(answerIndex);
      listCharIndex.remove(answerIndex);
    } else {
      isCorrect = false;
    }
    notifyListeners();
  }

  generateRequestedChar() {
    if (listCharIndex.isNotEmpty) {
      int randomInt = Random().nextInt(listCharIndex.length);

      requestedCharIndex = listCharIndex[randomInt];
      print(listCharIndex);
      listCharIndex.remove(requestedCharIndex);
      if (listCharIndex.length > 0) {
        isContinue = false;
      } else {
        isContinue = true;
      }
      openedCharIndex.add(requestedCharIndex);

      notifyListeners();
    } else {
      null;
    }
  }

  calculateTotolScore() {
    if (openedCharIndex.length == chars.length &&
        MyApp.totalScoreFlag == true) {
      MyApp.totalScore += (chars.length - MyApp.counter) * 100;
      MyApp.totalScoreFlag = false;
    }
    loadTotalScoreFromSharedPref();
  }

  Future<void> createSharedPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void saveMaxScore() {
    if (MyApp.totalScore > maxScore!)
      _sharedPrefObject!.setInt('maxScore', MyApp.totalScore);
  }

  loadTotalScoreFromSharedPref() async {
    await createSharedPrefObject();

    maxScore = _sharedPrefObject!.getInt('maxScore') ?? 0;
    saveMaxScore();
  }
}
