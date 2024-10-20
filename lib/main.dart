import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_contact_list/core/di/service_locator.dart';
import 'package:trial_contact_list/router/router.dart';
import 'package:trial_contact_list/utils/palette.dart';

void main() {
  initServicesLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter routes = s<AppRouter>();

    return MaterialApp.router(
      title: 'Trial Contact App',
      theme: ThemeData(
        primaryColor: Palette.white,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(
        routes,
        navigatorObservers: () {
          return <NavigatorObserver>[];
        },
      ),
      builder: (BuildContext context, Widget? child) {
        return SafeArea(child: child ?? const SizedBox.shrink());
      },
      routeInformationParser: routes.defaultRouteParser(),
    );
  }
}
