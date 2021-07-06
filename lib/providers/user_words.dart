import 'package:flutter/foundation.dart';
import 'package:lord_of_the_words/models/question.dart';

class UserWords with ChangeNotifier {
  List<Question> _userWords = [];

  List<Question> get userWords {
    return [..._userWords];
  }

  void addItem(Question question) {
    // json.encode({
    //   'answer': question.answer,
    //   'text': question.text,
    // });
    if (_userWords.isEmpty) {
      _userWords.add(question);
    }
    if (!(_userWords.any((element) => element.answer == question.answer))) {
      _userWords.add(question);
    }
  }

  void removeItem(Question question) {
    if (_userWords.any((element) => element.id == question.id)) {
      _userWords.remove(question);
      notifyListeners();
    }
  }
}
