import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  static const routeName = '/sample_item';

  const SampleItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.itemDetails.title),
      ),
      body: Center(
        child: Text(t.itemDetails.detailsPlaceholder(itemId: 1)),
      ),
    );
  }
}
