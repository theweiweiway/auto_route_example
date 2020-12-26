import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/pages/home_page.dart';
import 'package:auto_route_example/routers/account_router.dart';
import 'package:auto_route_example/routers/auth_guard.dart';
import 'package:auto_route_example/routers/groups_router.dart';

export './main_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      guards: [AuthGuard],
      usesTabsRouter: true,
      children: [
        groupsRouter,
        accountRouter,
      ],
    ),
  ],
)
class $MainRouter {}
