import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'daily_token.dart';

// ? 100 prata vira gold, 10 gold vira premio,
// ! 1 diamante é 20 gold e dá um iphone ou sla

class PointCalculator {
  final Token token;

  PointCalculator(this.token);

  void calcPoints(String value) {
    print(_hash(value, token.key, token.hash));
    print(_points(token.token, _hash(value, token.key, token.hash)));
    print(_points(token.specialToken, _hash(value, token.key, token.hash)));
  }

// Quando a pessoa encontra o valor ouro, ela não pode mais jogar
// Algum valor, eu tiro a quantidade de vezes que esse valor multiplica a chave do dia.
// Multiplico pela hash do dia e procuro a quantidade de tokens que quero encontrar (tkk) no valor,
// esse será o número de pontos da pessoa

// Se a pessoa encontrar o Special token (stkk) ela ganha algo, que seria por exemplo metade do premio ou o premio inteiro

  String _hash(String value, String tokenKey, String tokenHash) {
    final hash = sha256.convert(utf8.encode(value)).toString();
    final keyFoundCount = tokenKey.allMatches(hash).length;
    return sha256.convert(utf8.encode(tokenHash * keyFoundCount)).toString();
  }

  /// Quantidade de vezes que o token aparece na hash gerada
  int _points(String token, String hash) {
    return token.allMatches(hash).length;
  }
}
