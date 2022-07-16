import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as io;

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  static UserFirebase? _instance;

  static late final CollectionReference<TriviaUser> _userRef;

  UserFirebase._();

  static UserFirebase getInstance() {
    if (_instance == null) {
      _userRef = _firebaseFirestore.collection('users').withConverter(
          fromFirestore: (snapshot, _) => TriviaUser.fromJson(snapshot.data()!),
          toFirestore: (user, _) => user.toJson());
      _instance = UserFirebase._();
    }
    return _instance!;
  }

  Future<void> insertUser(TriviaUser user) async {
    await _userRef.add(user);
  }

  Future<void> insertUserWithId(TriviaUser user, String id) async {
    await _userRef.doc(id).set(user);
  }

  Future<void> updateUser(TriviaUser user, String? id) async {
    _userRef.doc(id).update(user.toJson());
  }

  Future<TriviaUser?> getUserById(String id) async {
    var document = await _userRef.doc(id).get();
    return document.data();
  }

  Future<TriviaUser?> getUserByUid(String uid) async {
    QuerySnapshot<TriviaUser>? list = await _userRef.where('id', isEqualTo: uid).get();
    return list.docs.first.data();
  }

  Future<String> getUserDocIdByUid(String uid) async {
    QuerySnapshot<TriviaUser>? list = await _userRef.where('id', isEqualTo: uid).get();
    return list.docs.first.reference.id;
  }

  Future<QuerySnapshot<TriviaUser>> getAll() async {
    return await _userRef.get();
  }

  Future<QuerySnapshot<TriviaUser>> searchUsers(String pseudo) async {
    return _userRef.where('pseudo', isEqualTo: pseudo).get();
  }

  Future<void> deleteUser(String id) async {
    return _userRef.doc(id).delete();
  }

  Future<UploadTask> uploadFile(XFile file, String userId) async {
    UploadTask uploadTask;

    Reference ref = _firebaseStorage.ref().child('$userId.jpg');

    final metadata = SettableMetadata(contentType: 'image/jpeg');

    if (kIsWeb) {
      uploadTask = ref.putData(await file.readAsBytes(), metadata);
    } else {
      uploadTask = ref.putFile(io.File(file.path), metadata);
    }

    return Future.value(uploadTask);
  }
}
