
import 'package:intl/intl.dart';

class Token {
  final String _day;

  final String token;
  final String hash;
  final String key;
  // specialKey é maravilha em
  final String specialToken;
  Token(
    this._day, {
    required this.token,
    required this.specialToken,
    required this.hash,
    required this.key,
  });

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      map['day'],
      token: map['token'],
      specialToken: map['specialToken'],
      hash: map['hash'],
      key: map['key'],
    );
  }
}

String get dateFormater {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(now);
}
