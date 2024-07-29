import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../i18n/translations.g.dart';
import '../../domain/settings_service.dart';
import '../../domain/models/app_settings.dart';

part 'app_settings_cubit.freezed.dart';
part 'app_settings_state.dart';

class AppSettingsCubit extends Cubit<AppSettingsState> {
  final SettingsService _settingsService;

  AppSettingsCubit(this._settingsService)
      : super(const AppSettingsState.initial(
            AppSettings(languageCode: 'en', themeMode: ThemeMode.system)));

  Future<void> initialize() async {
    final languageCode = await _settingsService.languageCode();
    final themeMode = await _settingsService.themeMode();
    LocaleSettings.setLocaleRaw(languageCode);
    emit(AppSettingsState.updated(state.appSettings.copyWith(
      languageCode: languageCode,
      themeMode: themeMode,
    )));
  }

  Future<void> updateLanguage(String languageCode) async {
    if (state.appSettings.languageCode == languageCode) return;
    LocaleSettings.setLocaleRaw(languageCode);
    await _settingsService.updateLanguage(languageCode);
    emit(AppSettingsState.updated(state.appSettings.copyWith(
      languageCode: languageCode,
    )));
  }

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    if (state.appSettings.themeMode == themeMode) return;
    await _settingsService.updateThemeMode(themeMode);
    emit(AppSettingsState.updated(state.appSettings.copyWith(
      themeMode: themeMode,
    )));
  }
}
