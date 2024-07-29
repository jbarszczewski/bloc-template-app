import 'package:drift/drift.dart';

class SampleItems extends Table {
  TextColumn get content => text().nullable()();
  TextColumn get id => text().withLength(min: 36, max: 36).unique()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}
