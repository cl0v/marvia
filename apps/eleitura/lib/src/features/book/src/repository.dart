import 'services.dart';


abstract class IBookRepository {
    BookCreatorService get creator;
    BookReaderService get reader;
    BookUpdaterService get updater;
    BookDeleterService get deleter;
}


class BookRepository implements IBookRepository {
    @override
    BookCreatorService get creator => BookCreatorService();
    @override
    BookReaderService get reader => BookReaderService();
    @override
    BookUpdaterService get updater => BookUpdaterService();
    @override
    BookDeleterService get deleter => BookDeleterService();
}


class FakeBookRepository implements IBookRepository {
    @override
    BookCreatorService get creator => FakeBookCreatorService();
    @override
    BookReaderService get reader => FakeBookReaderService();
    @override
    BookUpdaterService get updater => FakeBookUpdaterService();
    @override
    BookDeleterService get deleter => FakeBookDeleterService();
}

