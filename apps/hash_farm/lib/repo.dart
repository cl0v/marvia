import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'daily_token.dart';



String get formattedDate {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(now);
}


class Repo {
  Future<Token> fetchToken() async {
    final r = await FirebaseFirestore.instance
        .collection('main')
        .where('day', isEqualTo: formattedDate)
        .get();
    return Token.fromMap(r.docs.first.data());
  }

  // create() {
  //   FirebaseFirestore.instance.collection('main').add({'day': formattedDate});
  // }
}
