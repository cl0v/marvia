import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:painter/src/spider_web_2.0.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 1;
  int index = 0;

  var a = List.generate(30, (index) => index);

  double get multiplier => value /5 ;

  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 500), (_) {
      setState(() {
        value = a[index];
      index += 1;

      });
      if (index >= 10) index = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(multiplier);
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            size: Size(200, 100),
            painter: SpiderWeb(multiplier),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
