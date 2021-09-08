import 'package:eleitura/src/features/book/features/category/category.dart';
import 'package:eleitura/src/features/book/features/category/src/widget/create_category_button_widget.dart';
import 'package:flutter/material.dart';

class AddCategoryScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();

  CategoryModel category() {
    return CategoryModel(title: titleController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(hintText: 'title'),
            ),
            CreateCategoryButtonWidget(category: category)
          ],
        ),
      ),
    );
  }
}
