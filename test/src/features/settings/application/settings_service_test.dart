import 'package:bloc_template_app/src/features/settings/application/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('Settings Service', () {
    late SettingsService settingsService;
    setUp(() {
      // Initialize the shared_preferences package
      TestWidgetsFlutterBinding.ensureInitialized();
      settingsService = SettingsService();
    });

    test('loads LanguageCode from shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.languageCodeKey: 'test',
      });

      final languageCode = await settingsService.languageCode();

      expect(languageCode, 'test');
    });

    test('updates LanguageCode in shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.languageCodeKey: 'test',
      });

      await settingsService.updateLanguage('newLanguage');
      final languageCode = await settingsService.languageCode();

      expect(languageCode, 'newLanguage');
    });

    test('loads ThemeMode from shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.themeModeKey: 'light',
      });

      final themeMode = await settingsService.themeMode();

      expect(themeMode, ThemeMode.light);
    });

    test('updates ThemeMode in shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.themeModeKey: 'light',
      });

      await settingsService.updateThemeMode(ThemeMode.dark);
      final themeMode = await settingsService.themeMode();

      expect(themeMode, ThemeMode.dark);
    });
  });
}
