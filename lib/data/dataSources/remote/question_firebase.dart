import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertrivialp/data/entities/Question.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static late final CollectionReference<Results> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore.collection('questionsOfTheDay').withConverter(
          fromFirestore: (snapshot, _) => Results.fromJson(snapshot.data()!),
          toFirestore: (Results, _) => Results.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestion(Results question) async {
    await _questionRef.add(question);
  }

  Future<QuerySnapshot<Results>> getQuestions() async {
    return await _questionRef.get();
  }

  Future<void> deleteQuestion(String id) async {
    return _questionRef.doc().delete();
  }
}