import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static AuthFirebase? _instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static getInstance() {
    _instance ??= AuthFirebase._();
    return _instance;
  }

  AuthFirebase._();

  Future<UserCredential> signInWithCredentials(
      {required String email, required String password}) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential?> signUp(
      {required String email, required String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  String? getUser() {
    return (_firebaseAuth.currentUser)?.email;
  }

  String? getUserId() {
    return (_firebaseAuth.currentUser)?.uid;
  }

  void signOut() {
    _firebaseAuth.signOut();
  }
}
