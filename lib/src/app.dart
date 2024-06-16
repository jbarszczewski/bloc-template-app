import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '/i18n/translations.g.dart';
import 'features/settings/presentation/settings_controller.dart';
import 'routing/app_router.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  final SettingsController settingsController;
  final _appRouter = AppRouter();

  App({
    super.key,
    required this.settingsController,
  });

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          locale: TranslationProvider.of(context).flutterLocale,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: AppLocaleUtils.supportedLocales,

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          onGenerateTitle: (BuildContext context) => t.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
        );
      },
    );
  }
}
