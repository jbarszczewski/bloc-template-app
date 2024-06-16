// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_item.dart'
    as _i6;
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_item_details_screen.dart'
    as _i1;
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_list_screen.dart'
    as _i2;
import 'package:bloc_template_app/src/features/settings/presentation/settings_controller.dart'
    as _i7;
import 'package:bloc_template_app/src/features/settings/presentation/settings_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SampleItemDetailsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SampleItemDetailsScreen(),
      );
    },
    SampleItemsListRoute.name: (routeData) {
      final args = routeData.argsAs<SampleItemsListRouteArgs>(
          orElse: () => const SampleItemsListRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SampleItemsListScreen(
          key: args.key,
          items: args.items,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SettingsScreen(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.SampleItemDetailsScreen]
class SampleItemDetailsRoute extends _i4.PageRouteInfo<void> {
  const SampleItemDetailsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SampleItemDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SampleItemDetailsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleItemsListScreen]
class SampleItemsListRoute extends _i4.PageRouteInfo<SampleItemsListRouteArgs> {
  SampleItemsListRoute({
    _i5.Key? key,
    List<_i6.SampleItem> items = const [
      SampleItem(1),
      SampleItem(2),
      SampleItem(3)
    ],
    List<_i4.PageRouteInfo>? children,
  }) : super(
          SampleItemsListRoute.name,
          args: SampleItemsListRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'SampleItemsListRoute';

  static const _i4.PageInfo<SampleItemsListRouteArgs> page =
      _i4.PageInfo<SampleItemsListRouteArgs>(name);
}

class SampleItemsListRouteArgs {
  const SampleItemsListRouteArgs({
    this.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  });

  final _i5.Key? key;

  final List<_i6.SampleItem> items;

  @override
  String toString() {
    return 'SampleItemsListRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i3.SettingsScreen]
class SettingsRoute extends _i4.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i5.Key? key,
    required _i7.SettingsController controller,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i4.PageInfo<SettingsRouteArgs> page =
      _i4.PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.controller,
  });

  final _i5.Key? key;

  final _i7.SettingsController controller;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, controller: $controller}';
  }
}
