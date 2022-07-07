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

  Future<void> insertQuestion(Results question) async {
    return await _questionFirestore.insertQuestion(question);
  }

  Future<QuerySnapshot<Results>?> getQuestions() async {
    return await _questionFirestore.getQuestions();
  }

  Future<void> deleteQuestion(String id) async {
    return await _questionFirestore.deleteQuestion(id);
  }

  Future<List<Results>> getFilteredQuestions() async {
    List<Results> list = await _questionApi.getQuestionOfTheDay();

    Question objectToReturn = Question(
        results: list,
        date: _getDate()
    );

    return list;
  }

  String _getDate() {
    DateTime today = DateTime.now();
    return '${today.day}/${today.month}/${today.year}';
  }

  Future<List<Results>> getQuestionOfTheDay() async {
    List<Results> list =  (await _questionFirestore.getQuestions()) as List<Results>;

    Question objectToReturn = Question(
      results: list,
      date: _getDate()
    );

    if(objectToReturn.date == _getDate()) {
      return objectToReturn.results!;
    } else {
      List<Results> questions = await getFilteredQuestions();
      Question objectToReturn = Question(
          results: questions,
          date: _getDate()
      );

      // delete doc firestore
      // _questionFirestore.deleteQuestion();

      // put ObjecToReturn à firestore
      // objectToReturn.results?.forEach((element) {
      //   _questionFirestore.insertQuestion(element);
      // });
      
      return questions;
    }
  }
}
