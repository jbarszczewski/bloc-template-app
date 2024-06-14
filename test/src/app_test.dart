import 'package:bloc_template_app/i18n/translations.g.dart';
import 'package:bloc_template_app/src/app.dart';
import 'package:bloc_template_app/src/sample_feature/sample_item_details_view.dart';
import 'package:bloc_template_app/src/sample_feature/sample_items_list_view.dart';
import 'package:bloc_template_app/src/settings/settings_controller.dart';
import 'package:bloc_template_app/src/settings/settings_service.dart';
import 'package:bloc_template_app/src/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app displays sample items list view', (tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(TranslationProvider(
        child: App(settingsController: SettingsController(SettingsService()))));

    // Verify that the SampleItemListView is displayed
    expect(find.byType(SampleItemsListView), findsOneWidget);
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
    expect(find.byType(SampleItemDetailsView), findsOneWidget);
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
    expect(find.byType(SettingsView), findsOneWidget);
  });
}