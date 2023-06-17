import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
        reverseDurationInMilliseconds: 800,
        transitionsBuilder: (BuildContext ctx, Animation<double> animation1,
            Animation<double> animation2, Widget child) {
          // print('Anim1 ${animation1.value}');

          return child;
        },
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
        ),
        AutoRoute(page: RepositoryDetailsRoute.page)
      ];
}
