import 'package:bloc_template_app/src/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../i18n/translations.g.dart';
import '../../../shared/widgets/option_button.dart';
import 'cubit/app_settings_cubit.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.title),
      ),
      body: Padding(
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
        ),
      ),
    );
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
            builder: (context, state) {
              return OptionButton(
                  title: t.locales[languageCode]!,
                  optionKey: index,
                  isSelected: languageCode == state,
                  onChanged: (_) => context
                      .read<AppSettingsCubit>()
                      .updateLanguage(languageCode));
            },
          );
        });
  }

  Widget _buildThemeSelector(BuildContext context) {
    return Column(children: [
      Text(t.settings.themes.title),
      BlocSelector<AppSettingsCubit, AppSettingsState, ThemeMode>(
        selector: (state) {
          return state.appSettings.themeMode;
        },
        builder: (context, state) {
          return DropdownButton<ThemeMode>(
            // Glue the SettingsController to the theme selection DropdownButton.
            //
            // When a user selects a theme from the dropdown list, the
            // SettingsController is updated, which rebuilds the MaterialApp.
            // Read the selected themeMode from the controller
            value: state,
            // Call the updateThemeMode method any time the user selects a theme.
            onChanged: (themeMode) => context
                .read<AppSettingsCubit>()
                .updateThemeMode(themeMode ?? ThemeMode.system),
            items: [
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text(t.settings.themes.options.system),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text(t.settings.themes.options.light),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text(t.settings.themes.options.dark),
              )
            ],
          );
        },
      )
    ]);
  }
}
