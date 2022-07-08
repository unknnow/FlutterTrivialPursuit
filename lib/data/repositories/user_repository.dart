import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/dataSources/remote/user_firebase.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:image_picker/image_picker.dart';

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

  Future<List<TriviaUser>> getAllUsers() async {
    var usersFirebase = await _userFirestore.getAll();

    List<TriviaUser> listUsers = <TriviaUser>[];
    for (var element in usersFirebase.docs) {
      listUsers.add(element.data());
    }
    listUsers.sort((a, b){
      return b.score.compareTo(a.score);
    });

    return listUsers;
  }

  Future<void> createUser(TriviaUser user) async {
    return await _userFirestore.insertUser(user);
  }

  Future<void> uploadAvatar(XFile file, String userId) async {
    await _userFirestore.uploadFile(file, userId);
    return;
  }
}
