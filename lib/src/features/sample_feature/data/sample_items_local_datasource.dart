import 'package:drift/drift.dart';

import '../../../core/local_database/database.dart';

class SampleItemsLocalDataSource {
  final LocalDatabase _database;

  SampleItemsLocalDataSource({required LocalDatabase database})
      : _database = database;

  Future<void> addSampleItem(String id, String name, String? content) async {
    await _database.sampleItems.insertOnConflictUpdate(SampleItemsCompanion(
      id: Value(id),
      name: Value(name),
      content: Value(content),
    ));
  }

  Future<void> deleteSampleItem(String id) async {
    await _database.sampleItems.deleteWhere((tbl) => tbl.id.equals(id));
  }

  Future<SampleItem?> getSampleItemById(String id) async {
    return (_database.sampleItems.select()..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Stream<List<SampleItem>> watchAllSampleItems() {
    return _database.sampleItems.select().watch();
  }
}
