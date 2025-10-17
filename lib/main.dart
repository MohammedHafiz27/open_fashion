import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/go_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: AppRoute.router, title: 'Open Fashion');
  }
}
