import 'package:crypto_gem/src/ui/pages/tap_page.dart';
import 'package:flutter/material.dart';


/*
Salvar todos os toques no shared, depois enviar para o banco todos os dados de uma vez,
quando algo importante acontece(Exemplo, encontrar um cascalho)
*/


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: TapPage()
    );
  }
}
