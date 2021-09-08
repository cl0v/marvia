import 'package:eleitura/src/features/book/features/category/src/models.dart';
import 'package:eleitura/src/pages/add_category_screen.dart';
import 'package:eleitura/src/pages/book_list_screen.dart';
import 'package:eleitura/src/utils/navigator.dart';
import 'package:flutter/material.dart';

final categories = [
  CategoryModel(title: 'Politica'),
  CategoryModel(title: 'Biologia'),
  CategoryModel(title: 'Romance'),
];

/// Lista as categorias dos livros
///

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  _CategoryListScreenState createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias disponiveis'),
        actions: [IconButton(onPressed: ()=>push(context, AddCategoryScreen()), icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => ListTile(
          title: Text('${categories[index].title}'),
          onTap: () => push(context, BookListScreen()),
        ),
      ),
    );
  }
}
