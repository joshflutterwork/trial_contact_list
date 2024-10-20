import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trial_contact_list/core/di/service_locator.dart';
import 'package:trial_contact_list/router/router.dart';

void main() {
  initServicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter routes = s<AppRouter>();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MaterialApp.router(
        title: 'Trial Contact App',
        routerDelegate: AutoRouterDelegate(
          routes,
          navigatorObservers: () {
            return <NavigatorObserver>[];
          },
        ),
        routeInformationParser: routes.defaultRouteParser(),
      ),
    );
  }
}
