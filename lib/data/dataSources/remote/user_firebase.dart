import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertrivialp/data/entities/User.dart';

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
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

  Future<void> updateUser(TriviaUser user, String id) async {
    _userRef.doc(id).update(user.toJson());
  }

  Future<TriviaUser?> getUserById(String id) async {
    var document = await _userRef.doc(id).get();
    return document.data();
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
}
