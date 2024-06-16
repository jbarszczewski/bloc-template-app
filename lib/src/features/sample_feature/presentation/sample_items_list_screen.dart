import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';
import '../../../routing/app_router.gr.dart';
import '../../settings/presentation/settings_screen.dart';
import '../domain/sample_item.dart';
import 'sample_item_details_screen.dart';

/// Displays a list of SampleItems.
@RoutePage()
class SampleItemsListScreen extends StatelessWidget {
  final List<SampleItem> items;

  const SampleItemsListScreen({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.itemsList.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.push(const SettingsRoute());
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
          
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text(t.itemsList.sampleItemTitle(itemId: item.id)),
              leading: const CircleAvatar(
                // Display the Flutter Logo image asset.
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                // Navigate to the details page. If the user leaves and returns to
                // the app after it has been killed while running in the
                // background, the navigation stack is restored.
                Navigator.restorablePushNamed(
                  context,
                  SampleItemDetailsScreen.routeName,
                );
              });
        },
      ),
    );
  }
}
