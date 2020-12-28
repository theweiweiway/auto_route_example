import 'package:auto_route_example/routers/auth_guard.dart';
import 'package:auto_route_example/routers/main_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = MainRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(
        initialDeepLink: "/groups/root/details",
      ),
      builder: (_, router) {
        return router;
      },
    );
  }
}
