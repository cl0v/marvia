import 'package:eleitura/src/pages/about_screen.dart';
import 'package:flutter/material.dart';

import 'src/pages/category_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryListScreen(),
    );
  }
}