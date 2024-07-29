import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../i18n/translations.g.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final PreferredSizeWidget Function(BuildContext) buildAppBar;
  const ScaffoldWithNavBar(
      {required this.navigationShell, required this.buildAppBar, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navigationShell),
      appBar: buildAppBar(context),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: context.l10n.navigation.home),
          BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: context.l10n.navigation.settings),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
