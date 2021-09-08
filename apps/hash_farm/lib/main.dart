import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hash_farm/pages/auth_handler.dart';

// Joguin em que a pessoa tem que escrever qualquer merda e ganhará pontos com base no código
// Poderá trocar os pontos em alguma coisa.
// A pessoa terá 3 tentativas por dia
// Outras tentativas custam anuncio ou moedas pagas com google play
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HashFarm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthHandler(),
    );
  }
}
