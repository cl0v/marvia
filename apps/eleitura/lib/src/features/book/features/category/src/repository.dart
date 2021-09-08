import 'services.dart';


abstract class ICategoryRepository {
    CategoryCreatorService get creator;
    CategoryReaderService get reader;
    CategoryUpdaterService get updater;
    CategoryDeleterService get deleter;
}


class CategoryRepository implements ICategoryRepository {
    @override
    CategoryCreatorService get creator => CategoryCreatorService();
    @override
    CategoryReaderService get reader => CategoryReaderService();
    @override
    CategoryUpdaterService get updater => CategoryUpdaterService();
    @override
    CategoryDeleterService get deleter => CategoryDeleterService();
}


class FakeCategoryRepository implements ICategoryRepository {
    @override
    CategoryCreatorService get creator => FakeCategoryCreatorService();
    @override
    CategoryReaderService get reader => FakeCategoryReaderService();
    @override
    CategoryUpdaterService get updater => FakeCategoryUpdaterService();
    @override
    CategoryDeleterService get deleter => FakeCategoryDeleterService();
}

