import 'package:bloc_template_app/src/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../i18n/translations.g.dart';
import '../domain/sample_item.dart';
import 'bloc/sample_items_list_bloc.dart';

/// Displays a list of SampleItems.
class SampleItemsListScreen extends StatelessWidget {
  const SampleItemsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<SampleItemsListBloc, SampleItemsListState>(
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
        ),
        ElevatedButton(
            onPressed: () => context
                .read<SampleItemsListBloc>()
                .add(const SampleItemsListEvent.loadAll()),
            child: Icon(
              Icons.refresh,
              semanticLabel: context.l10n.itemsList.refreshButton,
            ))
      ],
    );
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
              context.pushNamed(AppRoutes.details.name,
                  pathParameters: {'id': item.id.toString()});
            });
      },
    );
  }
}
