import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/dataSources/remote/user_firebase.dart';
import 'package:fluttertrivialp/data/entities/User.dart';

class UserRepository {
  static UserRepository? _instance;
  final UserFirebase _userFirestore = UserFirebase.getInstance();

  static getInstance() {
    _instance ??= UserRepository._();
    return _instance;
  }

  UserRepository._();

  Future<TriviaUser?> getUserById(String id) async {
    TriviaUser? user = await _userFirestore.getUserById(id);
    return user;
  }

  Future<void> createUser(TriviaUser user) async {
    return await _userFirestore.insertUser(user);
  }
}
