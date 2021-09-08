import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hash_farm/user/model.dart';

class AuthRepo {
  static final fireauth = FirebaseAuth.instance;

  static Future<String> create(email, password) async {
    final u = await fireauth.createUserWithEmailAndPassword(
        email: email, password: password);

    return u.user!.uid;
  }

  static Future<String> login(email, password) async {
    final u = await fireauth.signInWithEmailAndPassword(
        email: email, password: password);
    return u.user!.uid;
  }
}

class UserRepository {
  final firestore = FirebaseFirestore.instance;
  final fireauth = FirebaseAuth.instance;
  final collection = 'user';

  create(String uid) async {
    final UserModel user = UserModel(silvers: 0, golds: 0)..uid = uid;
    firestore.collection(collection).add(user.toMap());
  }

  Future<UserModel> user(String uid) async {
    final f = await firestore
        .collection(collection)
        .where('uid', isEqualTo: uid)
        .limit(1)
        .get();

    final d = f.docs.first;

    return UserModel.fromMap(d.id, d.data());
  }
}
