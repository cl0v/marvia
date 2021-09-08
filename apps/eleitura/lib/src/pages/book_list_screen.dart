import 'package:eleitura/src/pages/category_list_screen.dart';
import 'package:eleitura/src/pages/chapter_list_screen.dart';
import 'package:eleitura/src/utils/navigator.dart';
import 'package:flutter/material.dart';

/// Lista de livros disponíveis em cada categoria

class BookListScreen extends StatefulWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria x'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => ListTile(
          title: Text('Livro $index'),
          onTap: () => push(context, ChapterListScreen()),
        ),
      ),
    );
  }
}
