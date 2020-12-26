// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'auth_guard.dart' as _i3;
import '../pages/home_page.dart' as _i4;
import '../pages/groups/groups_page.dart' as _i5;
import '../pages/groups/groups_details_page.dart' as _i6;
import '../pages/account/account_page.dart' as _i7;
import '../pages/account/account_details_page.dart' as _i8;

class MainRouter extends _i1.RootStackRouter {
  MainRouter({@_i2.required this.authGuard}) : assert(authGuard != null);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.HomePage());
    },
    GroupsFeature.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i1.EmptyRouterPage());
    },
    AccountFeature.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i1.EmptyRouterPage());
    },
    GroupsRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i5.GroupsPage());
    },
    GroupsDetailsRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i6.GroupsDetailsPage());
    },
    AccountRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i7.AccountPage());
    },
    AccountDetailsRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i8.AccountDetailsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/',
            usesTabsRouter: true,
            routeBuilder: (match) => HomeRoute.fromMatch(match),
            guards: [
              authGuard
            ],
            children: [
              _i1.RouteConfig<GroupsFeature>(GroupsFeature.name,
                  path: 'groups',
                  routeBuilder: (match) => GroupsFeature.fromMatch(match),
                  children: [
                    _i1.RouteConfig<GroupsRoute>(GroupsRoute.name,
                        path: '', routeBuilder: (_) => const GroupsRoute()),
                    _i1.RouteConfig<GroupsDetailsRoute>(GroupsDetailsRoute.name,
                        path: 'details',
                        routeBuilder: (_) => const GroupsDetailsRoute())
                  ]),
              _i1.RouteConfig<AccountFeature>(AccountFeature.name,
                  path: 'account',
                  routeBuilder: (match) => AccountFeature.fromMatch(match),
                  children: [
                    _i1.RouteConfig<AccountRoute>(AccountRoute.name,
                        path: '', routeBuilder: (_) => const AccountRoute()),
                    _i1.RouteConfig<AccountDetailsRoute>(
                        AccountDetailsRoute.name,
                        path: 'details',
                        routeBuilder: (_) => const AccountDetailsRoute())
                  ])
            ])
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class GroupsFeature extends _i1.PageRouteInfo {
  const GroupsFeature({List<_i1.PageRouteInfo> children})
      : super(name, path: 'groups', initialChildren: children);

  GroupsFeature.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'GroupsFeature';
}

class AccountFeature extends _i1.PageRouteInfo {
  const AccountFeature({List<_i1.PageRouteInfo> children})
      : super(name, path: 'account', initialChildren: children);

  AccountFeature.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AccountFeature';
}

class GroupsRoute extends _i1.PageRouteInfo {
  const GroupsRoute() : super(name, path: '');

  static const String name = 'GroupsRoute';
}

class GroupsDetailsRoute extends _i1.PageRouteInfo {
  const GroupsDetailsRoute() : super(name, path: 'details');

  static const String name = 'GroupsDetailsRoute';
}

class AccountRoute extends _i1.PageRouteInfo {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}

class AccountDetailsRoute extends _i1.PageRouteInfo {
  const AccountDetailsRoute() : super(name, path: 'details');

  static const String name = 'AccountDetailsRoute';
}
