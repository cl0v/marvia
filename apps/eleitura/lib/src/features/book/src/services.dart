import 'models.dart';

const String BookFirestoreCollection = '';

class BookCreatorService {
  create(BookModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeBookCreatorService extends BookCreatorService {
  @override
  create(BookModel m) {
    return;
  }
}

class BookReaderService {
  BookModel read(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeBookReaderService extends BookReaderService {
  @override
  BookModel read(String id) {
    return BookModel(title: '');
  }
}

class BookUpdaterService {
  update(String id, BookModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeBookUpdaterService extends BookUpdaterService {
  @override
  update(String id, BookModel m) {
    return;
  }
}

class BookDeleterService {
  delete(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeBookDeleterService extends BookDeleterService {
  @override
  delete(String id) {
    return;
  }
}
