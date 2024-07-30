// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SampleItemsTable extends SampleItems
    with TableInfo<$SampleItemsTable, SampleItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SampleItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 36, maxTextLength: 36),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [content, id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sample_items';
  @override
  VerificationContext validateIntegrity(Insertable<SampleItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SampleItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SampleItem(
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $SampleItemsTable createAlias(String alias) {
    return $SampleItemsTable(attachedDatabase, alias);
  }
}

class SampleItem extends DataClass implements Insertable<SampleItem> {
  final String? content;
  final String id;
  final String name;
  const SampleItem({this.content, required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  SampleItemsCompanion toCompanion(bool nullToAbsent) {
    return SampleItemsCompanion(
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      id: Value(id),
      name: Value(name),
    );
  }

  factory SampleItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SampleItem(
      content: serializer.fromJson<String?>(json['content']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'content': serializer.toJson<String?>(content),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  SampleItem copyWith(
          {Value<String?> content = const Value.absent(),
          String? id,
          String? name}) =>
      SampleItem(
        content: content.present ? content.value : this.content,
        id: id ?? this.id,
        name: name ?? this.name,
      );
  SampleItem copyWithCompanion(SampleItemsCompanion data) {
    return SampleItem(
      content: data.content.present ? data.content.value : this.content,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SampleItem(')
          ..write('content: $content, ')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(content, id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SampleItem &&
          other.content == this.content &&
          other.id == this.id &&
          other.name == this.name);
}

class SampleItemsCompanion extends UpdateCompanion<SampleItem> {
  final Value<String?> content;
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const SampleItemsCompanion({
    this.content = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SampleItemsCompanion.insert({
    this.content = const Value.absent(),
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<SampleItem> custom({
    Expression<String>? content,
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (content != null) 'content': content,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SampleItemsCompanion copyWith(
      {Value<String?>? content,
      Value<String>? id,
      Value<String>? name,
      Value<int>? rowid}) {
    return SampleItemsCompanion(
      content: content ?? this.content,
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SampleItemsCompanion(')
          ..write('content: $content, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $SampleItemsTable sampleItems = $SampleItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [sampleItems];
}

typedef $$SampleItemsTableCreateCompanionBuilder = SampleItemsCompanion
    Function({
  Value<String?> content,
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$SampleItemsTableUpdateCompanionBuilder = SampleItemsCompanion
    Function({
  Value<String?> content,
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

class $$SampleItemsTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $SampleItemsTable,
    SampleItem,
    $$SampleItemsTableFilterComposer,
    $$SampleItemsTableOrderingComposer,
    $$SampleItemsTableCreateCompanionBuilder,
    $$SampleItemsTableUpdateCompanionBuilder> {
  $$SampleItemsTableTableManager(_$LocalDatabase db, $SampleItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SampleItemsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SampleItemsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String?> content = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SampleItemsCompanion(
            content: content,
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> content = const Value.absent(),
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              SampleItemsCompanion.insert(
            content: content,
            id: id,
            name: name,
            rowid: rowid,
          ),
        ));
}

class $$SampleItemsTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $SampleItemsTable> {
  $$SampleItemsTableFilterComposer(super.$state);
  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SampleItemsTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $SampleItemsTable> {
  $$SampleItemsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$SampleItemsTableTableManager get sampleItems =>
      $$SampleItemsTableTableManager(_db, _db.sampleItems);
}
