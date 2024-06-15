import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

extension RouteExtensions on Object {
  String get routeName => runtimeType.toString();
  String get pathName => '/$routeName';
  Widget goRouterBuilder(BuildContext context, GoRouterState state) => this as Widget;
}
