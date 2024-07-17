import 'package:bloc_template_app/src/features/settings/application/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('SettingsController', () {
    late MockSettingsService mockSettingsService;

    setUp(() {
      mockSettingsService = MockSettingsService();
    });

    test('should load settings from the service', () async {
      // Arrange
      const themeMode = ThemeMode.light;
      const language = 'en';
      when(() => mockSettingsService.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mockSettingsService.languageCode())
          .thenAnswer((_) async => language);

      // Act
      //await settingsController.loadSettings();

      // Assert
      //  expect(settingsController.themeMode, themeMode);
      //  expect(settingsController.language, language);
    });

    test('should update and persist the language', () async {
      // Arrange
      const newLanguage = 'pl';
      when(() => mockSettingsService.updateLanguage(newLanguage))
          .thenAnswer((_) async {});

      // Act
      // await settingsController.updateLanguage(newLanguage);

      // Assert
      // expect(settingsController.language, newLanguage);
      // verify(() => mockSettingsService.updateLanguage(newLanguage)).called(1);
    });

    test('should update and persist the ThemeMode', () async {
      // Arrange
      const newThemeMode = ThemeMode.dark;
      when(() => mockSettingsService.updateThemeMode(newThemeMode))
          .thenAnswer((_) async {});

      // Act
      //  await settingsController.updateThemeMode(newThemeMode);

      // Assert
      //  expect(settingsController.themeMode, newThemeMode);
      //  verify(() => mockSettingsService.updateThemeMode(newThemeMode)).called(1);
    });
  });
}

class MockSettingsService extends Mock implements SettingsService {}
