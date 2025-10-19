import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/checkout_page.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/checkout_second_page.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';
import 'package:open_fashion/Features/home_page/presentation/views/home_page.dart';
import 'package:open_fashion/Features/splash_screen/presentation/views/splash_screen.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String checkoutSecondScreen = '/checkoutSecondScreen';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoute.splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: AppRoute.homeScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: AppRoute.checkoutScreen,
            builder: (BuildContext context, GoRouterState state) {
              return CheckoutPage(productModel: state.extra as ProductModel);
            },
          ),
          GoRoute(
            path: AppRoute.checkoutSecondScreen,
            builder: (BuildContext context, GoRouterState state) {
              return CheckoutSecondPage(orderModel: state.extra as OrderModel);
            },
          ),
        ],
      ),
    ],
  );
}
