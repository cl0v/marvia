import 'services.dart';


abstract class IChapterRepository {
    ChapterCreatorService get creator;
    ChapterReaderService get reader;
    ChapterUpdaterService get updater;
    ChapterDeleterService get deleter;
}


class ChapterRepository implements IChapterRepository {
    @override
    ChapterCreatorService get creator => ChapterCreatorService();
    @override
    ChapterReaderService get reader => ChapterReaderService();
    @override
    ChapterUpdaterService get updater => ChapterUpdaterService();
    @override
    ChapterDeleterService get deleter => ChapterDeleterService();
}


class FakeChapterRepository implements IChapterRepository {
    @override
    ChapterCreatorService get creator => FakeChapterCreatorService();
    @override
    ChapterReaderService get reader => FakeChapterReaderService();
    @override
    ChapterUpdaterService get updater => FakeChapterUpdaterService();
    @override
    ChapterDeleterService get deleter => FakeChapterDeleterService();
}

