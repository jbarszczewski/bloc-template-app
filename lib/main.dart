import 'package:bloc_template_app/src/features/sample_feature/data/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/settings/application/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'i18n/translations.g.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // * Initialize Supabase
  await Supabase.initialize(
      debug: false,
      url: const String.fromEnvironment('SUPABASE_URL'),
      anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'));

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(TranslationProvider(
      child: App(
    settingsService: SettingsService(),
    sampleItemsRepository: SampleItemsRepository(),
  )));
}
