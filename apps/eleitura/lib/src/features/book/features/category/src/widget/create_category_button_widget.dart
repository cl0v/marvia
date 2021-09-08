
import '../models.dart';
import '../repository.dart';
import 'package:flutter/material.dart';

class CreateCategoryButtonWidget extends StatelessWidget {
  const CreateCategoryButtonWidget({Key? key, required this.category})
      : super(key: key);

  final CategoryModel Function() category;

  onPressed(context) =>//TODO: Substituir o repositorio
    FakeCategoryRepository().creator.create(category.call());

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(context),
      child: Text(
        'Solicitar entrega',
      ),
    );
  }
}
