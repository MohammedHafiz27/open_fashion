import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Features/splash_screen/presentation/views/splash_screen.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
        routes: <RouteBase>[],
      ),
    ],
  );
}
