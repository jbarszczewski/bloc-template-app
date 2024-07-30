import 'package:bloc_template_app/src/features/settings/domain/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('Settings Service', () {
    late SettingsRepository settingsRepository;
    setUp(() {
      // Initialize the shared_preferences package
      TestWidgetsFlutterBinding.ensureInitialized();
      settingsRepository = SettingsRepository();
    });

    test('loads LanguageCode from shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsRepository.languageCodeKey: 'test',
      });

      final languageCode = await settingsRepository.languageCode();

      expect(languageCode, 'test');
    });

    test('updates LanguageCode in shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsRepository.languageCodeKey: 'test',
      });

      await settingsRepository.updateLanguage('newLanguage');
      final languageCode = await settingsRepository.languageCode();

      expect(languageCode, 'newLanguage');
    });

    test('loads ThemeMode from shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsRepository.themeModeKey: 'light',
      });

      final themeMode = await settingsRepository.themeMode();

      expect(themeMode, ThemeMode.light);
    });

    test('updates ThemeMode in shared preferences', () async {
      SharedPreferences.setMockInitialValues({
        SettingsRepository.themeModeKey: 'light',
      });

      await settingsRepository.updateThemeMode(ThemeMode.dark);
      final themeMode = await settingsRepository.themeMode();

      expect(themeMode, ThemeMode.dark);
    });
  });
}
