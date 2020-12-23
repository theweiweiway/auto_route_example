import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/pages/account/account_details_page.dart';
import 'package:auto_route_example/pages/account/account_page.dart';

const accountRouter = AutoRoute(
  path: 'account',
  name: 'AccountFeature',
  page: EmptyRouterPage,
  children: [
    AutoRoute(path: '', page: AccountPage),
    AutoRoute(path: 'details', page: AccountDetailsPage)
  ],
);
