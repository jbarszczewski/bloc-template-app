import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
class SettingsRepository {
  static const themeModeKey = 'themeMode';
  static const languageCodeKey = 'languageCode';

  /// Loads the User's preferred language from local or remote storage.
  Future<String> languageCode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var languageCode = sharedPreferences.getString(languageCodeKey) ?? 'en';
    return languageCode;
  }

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var themeMode = sharedPreferences.getString(themeModeKey);
    return switch (themeMode) {
      'dark' => ThemeMode.dark,
      'light' => ThemeMode.light,
      _ => ThemeMode.system,
    };
  }

  /// Persists the user's preferred language to local or remote storage.
  Future<void> updateLanguage(String language) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(languageCodeKey, language);
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(themeModeKey, theme.name);
  }
}
