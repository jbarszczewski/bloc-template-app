import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../i18n/translations.g.dart';
import 'cubit/sample_item_details_cubit.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsScreen extends StatelessWidget {
  final String id;

  const SampleItemDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // block builder that use SampleItemDetailsCubit
          BlocBuilder<SampleItemDetailsCubit, SampleItemDetailsState>(
            builder: (context, state) => state.when(
              initial: () {
                context.read<SampleItemDetailsCubit>().getItemById(id);
                return const Center(child: CircularProgressIndicator());
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (item) => Column(
                children: [
                  Text('ID: ${item.id}'),
                  Text('Name: ${item.name}'),
                  Text('Optional content: ${item.content}'),
                  ElevatedButton(
                    child: Text(context.l10n.itemDetails.deleteButton),
                    onPressed: () =>
                        context.read<SampleItemDetailsCubit>().deleteItem(id),
                  )
                ],
              ),
              error: () => const Center(child: Text('Error')),
            ),
          ),
        ],
      ),
    );
  }
}
