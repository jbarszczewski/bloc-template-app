import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SampleItemsListRoute.page),
        AutoRoute(page: SampleItemDetailsRoute.page),
        AutoRoute(page: SettingsRoute.page),
      ];
}
