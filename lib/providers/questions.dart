import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:lord_of_the_words/db/user_words_db.dart';
import 'package:lord_of_the_words/dummy_questions.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:provider/provider.dart';
import '../models/question.dart';

class Questions with ChangeNotifier {
  List<Question> _questionList = DUMMY_QUESTIONS.toList();
  Dificulty fixDifficulty = Dificulty.MIXED;
  List<Question> _fixUserWords = [];

  var questionIndex = new Random().nextInt(10);

  Future<bool?> setQuestionList(Dificulty dificulty) async {
    fixDifficulty = dificulty;
    _questionList.clear();
    if (fixDifficulty == Dificulty.CUSTOM) {
      var userWords = await UserWordsDatabase.instance.readAllUserWords();
      if (userWords.isEmpty) {
        _questionList = DUMMY_QUESTIONS.toList();
        return false;
      } else {
        playWithUserWords(userWords);
      }
    }
    if (fixDifficulty == Dificulty.MIXED) {
      _questionList = DUMMY_QUESTIONS.toList();
    } else {
      DUMMY_QUESTIONS.toList().forEach((element) {
        if (element.difficulty == fixDifficulty) {
          _questionList.add(element);
        }
      });
    }
    questionIndex = new Random().nextInt(_questionList.length);
    notifyListeners();
  }

  void generateRandomQuestionIndex(BuildContext context) {
    var randomQuestionIndex = new Random();
    Provider.of<Char>(context, listen: false).isContinue = true;

    questionIndex = randomQuestionIndex.nextInt(_questionList.length);
    Provider.of<Char>(context, listen: false).chars =
        convertAnswerToCharsList(_questionList[questionIndex].answer);
    FocusScope.of(context).nearestScope;
    notifyListeners();
  }

  List<String> convertAnswerToCharsList(String answer) {
    return answer.split('');
  }

  removeAndReloadQuestionList(Question question) {
    _questionList.removeWhere((element) => element.id == question.id);
//sorular bittiğinde tekrar listeyi seçilen difficultye göre dolduruyoruz userwordslerin diffuculty null oldğu için null kontrol yaptık
    if (_questionList.isEmpty &&
        fixDifficulty != Dificulty.MIXED &&
        question.difficulty != null) {
      DUMMY_QUESTIONS.toList().forEach((element) {
        if (element.difficulty == fixDifficulty) {
          _questionList.add(element);
        }
      });
      //userWords deki  kelimleri tekrar yükler.userWords seçili olduğunu anlamak için null kontrolü aptuk çünkü userWord lerin difficulty leri yok yani null
    } else if (_questionList.isEmpty && question.difficulty == null) {
      questionList = fixUserWords;

      questionIndex = new Random().nextInt(questionList.length);
    } else if (_questionList.isEmpty &&
        question.difficulty == Dificulty.MIXED) {
      _questionList = DUMMY_QUESTIONS.toList();
    }
    notifyListeners();
  }

  String getDifficultyAsString(Dificulty difficulty) {
    if (difficulty == Dificulty.EASY) {
      return 'Easy';
    } else if (difficulty == Dificulty.NORMAL) {
      return 'Normal';
    } else if (difficulty == Dificulty.HARD) {
      return 'Hard';
    } else
      return 'MyWords';
  }

  playWithUserWords(List<Question> userWords) {
    //toList yapmadığım için questionList hep sıfır gösteriyordu çözmem zaman aldı "userWords.toList();"
    questionList = userWords.toList();
    fixUserWords = userWords.toList();
    questionIndex = new Random().nextInt(_questionList.length);
    notifyListeners();
  }

  set questionList(List<Question> userWords) {
    _questionList = userWords;
    // notifyListeners();
  }

  set fixUserWords(List<Question> userWords) {
    _fixUserWords = userWords;
    // notifyListeners();
  }

  List<Question> get questionList {
    return [..._questionList];
  }

  List<Question> get fixUserWords {
    return [..._fixUserWords];
  }
}
