import 'package:cloud_firestore/cloud_firestore.dart';

class ServerCreator {
  createDoc(String collectionPath, Map<String, dynamic> map) =>
      FirebaseFirestore.instance.collection(collectionPath).add(map);
}
