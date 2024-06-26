import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '/i18n/translations.g.dart';
import 'features/sample_feature/presentation/sample_item_details_screen.dart';
import 'features/sample_feature/presentation/sample_items_list_screen.dart';
import 'features/settings/presentation/settings_controller.dart';
import 'features/settings/presentation/settings_screen.dart';
import 'themes/app_theme.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  final SettingsController settingsController;

  const App({
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
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
          theme: AppTheme.materialLight,
          darkTheme: AppTheme.materialDark,
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsScreen.routeName:
                    return SettingsScreen(controller: settingsController);
                  case SampleItemDetailsScreen.routeName:
                    return const SampleItemDetailsScreen();
                  case SampleItemsListScreen.routeName:
                  default:
                    return const SampleItemsListScreen();
                }
              },
            );
          },
        );
      },
    );
  }
}
