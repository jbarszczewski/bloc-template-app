import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../i18n/translations.g.dart';
import '../../settings/presentation/settings_screen.dart';
import '../domain/sample_item.dart';
import 'bloc/sample_items_list_bloc.dart';
import 'sample_item_details_screen.dart';

/// Displays a list of SampleItems.
class SampleItemsListScreen extends StatelessWidget {
  static const routeName = '/';

  const SampleItemsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(t.itemsList.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to the settings page. If the user leaves and returns
                // to the app after it has been killed while running in the
                // background, the navigation stack is restored.
                Navigator.restorablePushNamed(
                    context, SettingsScreen.routeName);
              },
            ),
          ],
        ),

        body: BlocBuilder<SampleItemsListBloc, SampleItemsListState>(
          builder: (context, state) => state.when(
            initial: () {
              context
                  .read<SampleItemsListBloc>()
                  .add(const SampleItemsListEvent.loadAll());
              return const Center(child: CircularProgressIndicator());
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (items) => _buildItemsList(items),
            error: () => const Center(child: Text('Error')),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context
              .read<SampleItemsListBloc>()
              .add(const SampleItemsListEvent.loadAll()),
          tooltip: t.itemsList.refreshButton,
          child: const Icon(Icons.refresh),
        ));
  }

  ListView _buildItemsList(List<SampleItem> items) {
    return ListView.builder(
      // Providing a restorationId allows the ListView to restore the
      // scroll position when a user leaves and returns to the app after it
      // has been killed while running in the background.
      restorationId: 'sampleItemListView',
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];

        return ListTile(
            title: Text(item.name),
            subtitle: Text(item.content ?? ''),
            leading: CircleAvatar(
              // Display the Flutter Logo image asset.
              backgroundImage:
                  const AssetImage('assets/images/flutter_logo.png'),
              child: Text('${item.id}'),
            ),
            onTap: () {
              // Navigate to the details page. If the user leaves and returns to
              // the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(
                  context, SampleItemDetailsScreen.routeName,
                  arguments: item.id);
            });
      },
    );
  }
}
