import 'package:bloc_template_app/src/features/settings/data/settings_service.dart';
import 'package:bloc_template_app/src/features/settings/presentation/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Annotation which generates the cat.mocks.dart library and the MockCat class.
@GenerateNiceMocks([MockSpec<SettingsService>()])
import 'settings_controller_test.mocks.dart';

void main() {
  group('SettingsController', () {
    late SettingsController settingsController;
    late MockSettingsService mockSettingsService;

    setUp(() {
      mockSettingsService = MockSettingsService();
      settingsController = SettingsController(mockSettingsService);
    });

    test('should load settings from the service', () async {
      // Arrange
      const themeMode = ThemeMode.light;
      const language = 'en';
      when(mockSettingsService.themeMode()).thenAnswer((_) async => themeMode);
      when(mockSettingsService.language()).thenAnswer((_) async => language);

      // Act
      await settingsController.loadSettings();

      // Assert
      expect(settingsController.themeMode, themeMode);
      expect(settingsController.language, language);
    });

    test('should update and persist the language', () async {
      // Arrange
      const newLanguage = 'pl';

      // Act
      await settingsController.updateLanguage(newLanguage);

      // Assert
      expect(settingsController.language, newLanguage);
      verify(mockSettingsService.updateLanguage(newLanguage)).called(1);
    });

    test('should update and persist the ThemeMode', () async {
      // Arrange
      const newThemeMode = ThemeMode.dark;

      // Act
      await settingsController.updateThemeMode(newThemeMode);

      // Assert
      expect(settingsController.themeMode, newThemeMode);
      verify(mockSettingsService.updateThemeMode(newThemeMode)).called(1);
    });
  });
}
