import 'package:bloc_template_app/src/core/local_database/database.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/settings/domain/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'i18n/translations.g.dart';
import 'src/app.dart';
import 'src/features/sample_feature/data/sample_items_local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // * Initialize Supabase
  await Supabase.initialize(
      debug: false,
      url: const String.fromEnvironment('SUPABASE_URL'),
      anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'));

  runApp(TranslationProvider(
      child: App(
    settingsRepository: SettingsRepository(),
    sampleItemsRepository: SampleItemsRepository(
        localDataSource:
            SampleItemsLocalDataSource(database: LocalDatabase('dev'))),
  )));
}
