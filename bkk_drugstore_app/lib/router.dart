import 'package:bkk_drugstore_app/core/models/models.dart';
import 'package:bkk_drugstore_app/helpers/extensions/route_ext.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

GoRoute _goRouter(Object screen, {bool isSub = false}) {
  return GoRoute(
    path: isSub ? screen.routeName : screen.pathName,
    builder: screen.goRouterBuilder,
  );
}

final GoRouter goRouterConfig = GoRouter(
  initialLocation: const MapPinScreen().pathName,
  routes: <RouteBase>[
    _goRouter(const MapPinScreen()),
    _goRouter(const SiteListScreen()),
    GoRoute(
        path: const SiteDetailScreen().pathName,
        builder: (context, state) => SiteDetailScreen(data: state.extra as SiteEntity?))
  ],
);
