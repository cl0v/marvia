import 'models.dart';

const String CategoryFirestoreCollection = '';

class CategoryCreatorService {
  create(CategoryModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeCategoryCreatorService extends CategoryCreatorService {
  @override
  create(CategoryModel m) {
    print('Criando categoria falsa bro');
  }
}

class CategoryReaderService {
  CategoryModel read(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeCategoryReaderService extends CategoryReaderService {
  @override
  CategoryModel read(String id) {
    return CategoryModel(title: 'p');
  }
}

class CategoryUpdaterService {
  update(String id, CategoryModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeCategoryUpdaterService extends CategoryUpdaterService {
  @override
  update(String id, CategoryModel m) {
    return;
  }
}

class CategoryDeleterService {
  delete(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeCategoryDeleterService extends CategoryDeleterService {
  @override
  delete(String id) {
    return;
  }
}
