import 'package:auto_route/auto_route.dart';
import 'package:trial_contact_list/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          maintainState: false,
          initial: true,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          maintainState: false,
        ),
        AutoRoute(
          path: '/contact-list',
          page: ContactListRoute.page,
          maintainState: false,
        ),
      ];
}
