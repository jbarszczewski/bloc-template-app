import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../i18n/translations.g.dart';
import '../../../shared/widgets/option_button.dart';
import '../../../themes/app_theme.dart';
import 'cubit/app_settings_cubit.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildThemeSelector(context),
            _buildLanguageSelector(context),
            const SizedBox(height: 160),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        context.themeColorsExtension.buttonCornerRadius),
                  ),
                ),
                child: const Text('test button'))
          ],
        ));
  }

  Widget _buildLanguageSelector(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: AppLocaleUtils.supportedLocales.length,
        itemBuilder: (context, index) {
          var languageCode =
              AppLocaleUtils.supportedLocales[index].languageCode;
          return BlocSelector<AppSettingsCubit, AppSettingsState, String>(
            selector: (state) {
              return state.appSettings.languageCode;
            },
            builder: (context, stateLanguageCode) {
              return OptionButton(
                  title: context.l10n.locales[languageCode]!,
                  optionKey: index,
                  isSelected: languageCode == stateLanguageCode,
                  onChanged: (_) => context
                      .read<AppSettingsCubit>()
                      .updateLanguage(languageCode));
            },
          );
        });
  }

  Widget _buildThemeSelector(BuildContext context) {
    return Column(children: [
      Text(context.l10n.settings.themes.title),
      BlocSelector<AppSettingsCubit, AppSettingsState, ThemeMode>(
        selector: (state) {
          return state.appSettings.themeMode;
        },
        builder: (context, stateThemeMode) {
          return DropdownButton<ThemeMode>(
            value: stateThemeMode,
            onChanged: (themeMode) => context
                .read<AppSettingsCubit>()
                .updateThemeMode(themeMode ?? ThemeMode.system),
            items: [
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text(context.l10n.settings.themes.options.system),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text(context.l10n.settings.themes.options.light),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text(context.l10n.settings.themes.options.dark),
              )
            ],
          );
        },
      )
    ]);
  }
}
