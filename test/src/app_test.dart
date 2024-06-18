import 'package:bloc_template_app/i18n/translations.g.dart';
import 'package:bloc_template_app/src/app.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_item_details_screen.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_list_screen.dart';
import 'package:bloc_template_app/src/features/settings/application/settings_service.dart';
import 'package:bloc_template_app/src/features/settings/presentation/settings_controller.dart';
import 'package:bloc_template_app/src/features/settings/presentation/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app displays sample items list view', (tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(TranslationProvider(
        child: App(settingsController: SettingsController(SettingsService()))));

    // Verify that the SampleItemListView is displayed
    expect(find.byType(SampleItemsListScreen), findsOneWidget);
  });

  testWidgets('app displays sample item details view', (tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(TranslationProvider(
        child: App(settingsController: SettingsController(SettingsService()))));

    // Tap on the sample item list tile
    await tester.tap(find.byType(ListTile).first);

    // Wait for the animation to complete
    await tester.pumpAndSettle();

    // Verify that the SampleItemDetailsView is displayed
    expect(find.byType(SampleItemDetailsScreen), findsOneWidget);
  });

  testWidgets('app displays settings view', (tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(TranslationProvider(
        child: App(settingsController: SettingsController(SettingsService()))));

    // Tap on the settings button
    await tester.tap(find.byIcon(Icons.settings));

    // Wait for the animation to complete
    await tester.pumpAndSettle();

    // Verify that the SettingsView is displayed
    expect(find.byType(SettingsScreen), findsOneWidget);
  });
}
