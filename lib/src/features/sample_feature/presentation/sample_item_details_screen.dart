import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';

/// Displays detailed information about a SampleItem.
@RoutePage()
class SampleItemDetailsScreen extends StatelessWidget {
  const SampleItemDetailsScreen({super.key});

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
