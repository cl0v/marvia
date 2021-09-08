import 'models.dart';

const String ChapterFirestoreCollection = '';

class ChapterCreatorService {
  create(ChapterModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeChapterCreatorService extends ChapterCreatorService {
  @override
  create(ChapterModel m) {
    return;
  }
}

class ChapterReaderService {
  ChapterModel read(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeChapterReaderService extends ChapterReaderService {
  @override
  ChapterModel read(String id) {
    return ChapterModel();
  }
}

class ChapterUpdaterService {
  update(String id, ChapterModel m) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeChapterUpdaterService extends ChapterUpdaterService {
  @override
  update(String id, ChapterModel m) {
    return;
  }
}

class ChapterDeleterService {
  delete(String id) {
    //TODO: Implement read;
    throw UnimplementedError();
  }
}

class FakeChapterDeleterService extends ChapterDeleterService {
  @override
  delete(String id) {
    return;
  }
}
