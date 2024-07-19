import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsScreen extends StatelessWidget {
  final String id;

  const SampleItemDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final itemId = int.tryParse(id) ?? 0;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(context.l10n.itemDetails.detailsPlaceholder(itemId: itemId)),
          ElevatedButton(
            child: Text(context.l10n.itemDetails.markAsCompletedButton),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
