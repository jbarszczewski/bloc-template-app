import 'package:bloc_template_app/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/settings/domain/settings_service.dart';
import 'package:bloc_template_app/src/features/settings/domain/models/app_settings.dart';
import 'package:bloc_template_app/src/features/settings/presentation/cubit/app_settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('AppSettingsCubit', () {
    late AppSettingsCubit appSettingsCubit;
    late MockSettingsService mockSettingsService;

    setUp(() {
      mockSettingsService = MockSettingsService();
      appSettingsCubit = AppSettingsCubit(mockSettingsService);
    });

    tearDown(() {
      appSettingsCubit.close();
    });

    test('initial state is correct', () {
      expect(
        appSettingsCubit.state,
        equals(
          const AppSettingsState.initial(
            AppSettings(languageCode: 'en', themeMode: ThemeMode.system),
          ),
        ),
      );
    });

    test('initialize updates app settings state', () async {
      const languageCode = 'en';
      const themeMode = ThemeMode.light;
      when(() => mockSettingsService.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mockSettingsService.themeMode())
          .thenAnswer((_) async => themeMode);

      await appSettingsCubit.initialize();

      verify(() => mockSettingsService.languageCode()).called(1);
      verify(() => mockSettingsService.themeMode()).called(1);
      expect(
        appSettingsCubit.state,
        equals(
          AppSettingsState.updated(
            appSettingsCubit.state.appSettings.copyWith(
              languageCode: languageCode,
              themeMode: themeMode,
            ),
          ),
        ),
      );
    });

    test('updateLanguage updates app settings state', () async {
      const languageCode = 'pl';
      const themeMode = ThemeMode.dark;
      when(() => mockSettingsService.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mockSettingsService.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mockSettingsService.updateLanguage(languageCode))
          .thenAnswer((_) async {});

      await appSettingsCubit.updateLanguage(languageCode);

      verify(() => mockSettingsService.updateLanguage(languageCode)).called(1);
      expect(appSettingsCubit.state, equals(appSettingsCubit.state));
    });

    test('updateThemeMode updates app settings state', () async {
      const languageCode = 'en';
      const themeMode = ThemeMode.dark;
      when(() => mockSettingsService.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mockSettingsService.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mockSettingsService.updateThemeMode(themeMode))
          .thenAnswer((_) async {});
      await appSettingsCubit.updateThemeMode(themeMode);

      verify(() => mockSettingsService.updateThemeMode(themeMode)).called(1);
      expect(appSettingsCubit.state, equals(appSettingsCubit.state));
    });
  });
}

class MockSampleItemsRepository extends Mock implements SampleItemsRepository {}

class MockSettingsService extends Mock implements SettingsService {}
