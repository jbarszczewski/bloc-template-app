import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';
import '../../../shared/widgets/option_button.dart';
import 'settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  static const routeName = '/settings';

  final SettingsController controller;

  const SettingsView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [_buildThemeSelector(), _buildLanguageSelector()],
        ),
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: AppLocaleUtils.supportedLocales.length,
        itemBuilder: (context, index) {
          var languageCode =
              AppLocaleUtils.supportedLocales[index].languageCode;
          return OptionButton(
              title: t.locales[languageCode]!,
              optionKey: index,
              isSelected: languageCode == controller.language,
              onChanged: (int? value) {
                LocaleSettings.setLocaleRaw(languageCode);
                controller.updateLanguage(languageCode);
              });
        });
  }

  Widget _buildThemeSelector() {
    return Column(children: [
      Text(t.settings.themes.title),
      DropdownButton<ThemeMode>(
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        // Read the selected themeMode from the controller
        value: controller.themeMode,
        // Call the updateThemeMode method any time the user selects a theme.
        onChanged: controller.updateThemeMode,
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
      )
    ]);
  }
}
