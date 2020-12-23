import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/pages/groups/groups_details_page.dart';
import 'package:auto_route_example/pages/groups/groups_page.dart';

const groupsRouter = AutoRoute(
  path: 'groups',
  name: 'GroupsFeature',
  page: EmptyRouterPage,
  children: [
    AutoRoute(path: '', page: GroupsPage),
    AutoRoute(path: 'details', page: GroupsDetailsPage)
  ],
);
