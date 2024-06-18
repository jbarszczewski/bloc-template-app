import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsScreen extends StatelessWidget {
  static const routeName = '/sample_item';

  const SampleItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.itemDetails.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(t.itemDetails.detailsPlaceholder(itemId: itemId)),
            ElevatedButton(
              child: Text(t.itemDetails.markAsCompletedButton),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
