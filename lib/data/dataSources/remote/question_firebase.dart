import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertrivialp/data/entities/Question.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static late final CollectionReference<Question> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore.collection('questionsOfTheDay').withConverter(
          fromFirestore: (snapshot, _) => Question.fromJson(snapshot.data()!),
          toFirestore: (Question, _) => Question.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestion(Question question) async {
    await _questionRef.add(question);
  }

  Future<QuerySnapshot<Question>> getQuestions() async {
    return await _questionRef.get();
  }

  Future<void> deleteQuestion() async {
    QuerySnapshot<Question> questions = await _questionRef.get();
    return _questionRef.doc(questions.docs.first.id).delete();
  }
}