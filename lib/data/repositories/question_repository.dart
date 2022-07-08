import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/dataSources/remote/question_api.dart';
import 'package:fluttertrivialp/data/dataSources/remote/question_firebase.dart';
import 'package:fluttertrivialp/data/dataSources/remote/user_firebase.dart';
import 'package:fluttertrivialp/data/entities/Question.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';

class QuestionRepository {
  static QuestionRepository? _instance;
  final QuestionFirebase _questionFirestore = QuestionFirebase.getInstance();
  final QuestionApi _questionApi = QuestionApi.getInstance();

  static getInstance() {
    _instance ??= QuestionRepository._();
    return _instance;
  }

  QuestionRepository._();

  Future<void> insertQuestion(Question question) async {
    return await _questionFirestore.insertQuestion(question);
  }

  Future<QuerySnapshot<Question>?> getQuestions() async {
    return await _questionFirestore.getQuestions();
  }

  Future<void> deleteQuestion(String id) async {
    return await _questionFirestore.deleteQuestion();
  }

  Future<List<Results>> getFilteredQuestions() async {
    List<Results> list = await _questionApi.getQuestionOfTheDay();

    Question objectToReturn = Question(results: list, date: _getDate());

    return list;
  }

  Future<List<Results>?> getQuestionOfTheDay() async {

    var questionsFromFirestore = await _questionFirestore.getQuestions();

    if(questionsFromFirestore.size == 0) {
      print("ici");
      var questionsOfTheDay = await _questionApi.getQuestionOfTheDay();

      Question objectToReturn = Question(
          results: questionsOfTheDay,
          date: _getDate()
      );

      _questionFirestore.insertQuestion(objectToReturn);

      return questionsOfTheDay;
    } else {
      var questionsData = questionsFromFirestore.docs.first.data();
      DateTime newDate = DateTime.parse(questionsData.date);

      if(newDate.day == DateTime.now().day && newDate.month == DateTime.now().month  && newDate.year == DateTime.now().year) {
        return questionsData.results;
      } else {
        _questionFirestore.deleteQuestion();

        var questionsOfTheDay = await _questionApi.getQuestionOfTheDay();

        Question objectToReturn = Question(
            results: questionsOfTheDay,
            date: _getDate()
        );

        _questionFirestore.insertQuestion(objectToReturn);

        return questionsOfTheDay;
      }
    }
  }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.day}/${today.month}/${today.year}';
  }
}
