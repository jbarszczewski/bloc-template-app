import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/sample_feature/presentation/sample_item_details/sample_item_details_screen.dart';
import '../../features/sample_feature/presentation/sample_items_overview/sample_items_overview_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';
import 'scaffold_with_nav_bar.dart';

// GoRouter configuration
GoRouter get appRouter => GoRouter(
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return ScaffoldWithNavBar(
                  navigationShell: navigationShell,
                  buildAppBar: (context) {
                    return AppBar(
                      title: Text(_getTitleForRoute(state)),
                      leading: _getCanPopForRoute(state)
                          ? IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () => context.pop(),
                            )
                          : null,
                    );
                  });
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                    name: AppRoutes.home.name,
                    path: '/',
                    builder: (context, state) =>
                        const SampleItemsOverviewScreen(),
                    routes: [
                      GoRoute(
                        name: AppRoutes.details.name,
                        path: 'details/:id',
                        builder: (context, state) => SampleItemDetailsScreen(
                            id: state.pathParameters['id'] ?? ''),
                      )
                    ]),
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  name: AppRoutes.settings.name,
                  path: '/settings',
                  builder: (context, state) => const SettingsScreen(),
                ),
              ])
            ])
      ],
    );

bool _getCanPopForRoute(GoRouterState state) {
  return state.topRoute?.name == AppRoutes.details.name;
}

String _getTitleForRoute(GoRouterState state) {
  if (state.topRoute?.name == AppRoutes.home.name) return 'Home';
  if (state.topRoute?.name == AppRoutes.details.name) return 'Details';
  if (state.topRoute?.name == AppRoutes.settings.name) return 'Settings';
  return state.topRoute?.name ?? 'Unknown';
}

enum AppRoutes { home, details, settings }
