import 'package:cloud_firestore/cloud_firestore.dart';

class ServerReader {
  Future<Map<String, dynamic>?> readDoc(String collectionPath, String id) async {
    final r = await FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(id)
        .get();
    return r.data();
  }
}//
