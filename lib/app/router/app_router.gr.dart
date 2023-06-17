// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:github_search/ui/screen/home/views/pages/home_page.dart' as _i1;
import 'package:github_search/ui/screen/repo_details/repository_details_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    RepositoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RepositoryDetailsRouteArgs>();
      return _i3.AutoRoutePage<String>(
        routeData: routeData,
        child: _i2.RepositoryDetailsScreen(
          key: args.key,
          isarId: args.isarId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RepositoryDetailsScreen]
class RepositoryDetailsRoute
    extends _i3.PageRouteInfo<RepositoryDetailsRouteArgs> {
  RepositoryDetailsRoute({
    _i4.Key? key,
    required int isarId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          RepositoryDetailsRoute.name,
          args: RepositoryDetailsRouteArgs(
            key: key,
            isarId: isarId,
          ),
          initialChildren: children,
        );

  static const String name = 'RepositoryDetailsRoute';

  static const _i3.PageInfo<RepositoryDetailsRouteArgs> page =
      _i3.PageInfo<RepositoryDetailsRouteArgs>(name);
}

class RepositoryDetailsRouteArgs {
  const RepositoryDetailsRouteArgs({
    this.key,
    required this.isarId,
  });

  final _i4.Key? key;

  final int isarId;

  @override
  String toString() {
    return 'RepositoryDetailsRouteArgs{key: $key, isarId: $isarId}';
  }
}
