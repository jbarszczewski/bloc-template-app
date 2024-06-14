import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';
import '../data/settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController with ChangeNotifier {
  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService;

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  ThemeMode? _themeMode;
  String? _language;

  SettingsController(this._settingsService);

  // Allow Widgets to read the user's preferred language.
  String get language => _language ?? 'en';

  // Allow Widgets to read the user's preferred ThemeMode.
  ThemeMode get themeMode => _themeMode ?? ThemeMode.system;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();
    _language = await _settingsService.language();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  /// Update and persist the language based on the user's selection.
  Future<void> updateLanguage(String newLanguage) async {
    if (newLanguage == _language) return;

    _language = newLanguage;

    notifyListeners();
    LocaleSettings.setLocaleRaw(newLanguage);
    await _settingsService.updateLanguage(newLanguage);
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Do not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new ThemeMode in memory
    _themeMode = newThemeMode;

    // Important! Inform listeners a change has occurred.
    notifyListeners();

    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateThemeMode(newThemeMode);
  }
}
