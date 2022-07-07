import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/dataSources/remote/auth_firebase.dart';

class AuthRepository {
  static AuthRepository? _instance;
  final AuthFirebase _userFirestore = AuthFirebase.getInstance();

  static getInstance() {
    _instance ??= AuthRepository._();
    return _instance;
  }

  AuthRepository._();

  Future<User?> signIn(
      {required String email, required String password}) async {
    UserCredential userCredential = await _userFirestore.signInWithCredentials(
        email: email, password: password);
    return userCredential.user;
  }

  Future<User?> signUp(
      {required String email, required String password}) async {
    UserCredential? userCredential = await _userFirestore.signUp(email: email, password: password);
    return userCredential?.user;
  }
}
