final String tableUserWords = 'userwords';
enum Dificulty {
  MIXED,
  EASY,
  NORMAL,
  HARD,
  CUSTOM,
}

class QuestionFields {
  static final List<String> values = [
    /// Add all fields
    id, text, answer,
  ];

  static final String id = '_id';
  static final String text = 'text';
  static final String answer = 'answer';
}

class Question {
  final int? id;
  final String text;
  final String answer;
  final Dificulty? difficulty;

  const Question({
    this.difficulty,
    this.id,
    required this.text,
    required this.answer,
  });
  Question copy({
    int? id,
    String? text,
    String? answer,
  }) =>
      Question(
        id: id ?? this.id,
        text: text ?? this.text,
        answer: answer ?? this.answer,
      );

  static Question fromJson(Map<String, Object?> json) => Question(
        id: json[QuestionFields.id] as int?,
        text: json[QuestionFields.text] as String,
        answer: json[QuestionFields.answer] as String,
      );

  Map<String, Object?> toJson() => {
        QuestionFields.id: id,
        QuestionFields.text: text,
        QuestionFields.answer: answer,
      };
}
