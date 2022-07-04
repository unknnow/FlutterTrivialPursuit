/// category : "Science & Nature"
/// type : "boolean"
/// difficulty : "medium"
/// question : "Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans."
/// correct_answer : "True"
/// incorrect_answers : ["False"]

class Results {
  Results({
    String? category,
    String? type,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? incorrectAnswers,
  }) {
    _category = category;
    _type = type;
    _difficulty = difficulty;
    _question = question;
    _correctAnswer = correctAnswer;
    _incorrectAnswers = incorrectAnswers;
  }

  Results.fromJson(dynamic json) {
    _category = json['category'];
    _type = json['type'];
    _difficulty = json['difficulty'];
    _question = json['question'];
    _correctAnswer = json['correct_answer'];
    _incorrectAnswers = json['incorrect_answers'] != null
        ? json['incorrect_answers'].cast<String>()
        : [];
  }

  String? _category;
  String? _type;
  String? _difficulty;
  String? _question;
  String? _correctAnswer;
  List<String>? _incorrectAnswers;

  Results copyWith({
    String? category,
    String? type,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? incorrectAnswers,
  }) =>
      Results(
        category: category ?? _category,
        type: type ?? _type,
        difficulty: difficulty ?? _difficulty,
        question: question ?? _question,
        correctAnswer: correctAnswer ?? _correctAnswer,
        incorrectAnswers: incorrectAnswers ?? _incorrectAnswers,
      );

  String? get category => _category;

  String? get type => _type;

  String? get difficulty => _difficulty;

  String? get question => _question;

  String? get correctAnswer => _correctAnswer;

  List<String>? get incorrectAnswers => _incorrectAnswers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = _category;
    map['type'] = _type;
    map['difficulty'] = _difficulty;
    map['question'] = _question;
    map['correct_answer'] = _correctAnswer;
    map['incorrect_answers'] = _incorrectAnswers;
    return map;
  }
}
