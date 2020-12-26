import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/routers/main_router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  String path = "";

  @override
  void didChangeDependencies() {
    var rootDelegate = RootRouterDelegate.of(context);
    rootDelegate.addListener(() {
      final newPath = rootDelegate.currentConfiguration.map((a) {
        if (a.path.isNotEmpty && !a.path.contains("/")) {
          return '/' + a.path;
        }
        return "";
      }).join("");
      setState(() {
        path = newPath;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AutoTabsRouter(
      lazyLoad: true,
      routes: [GroupsFeature(), AccountFeature()],
      duration: Duration(milliseconds: 400),
      builder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          appBar: AppBar(
            title: Text(tabsRouter.currentRoute.path),
          ),
          body: FadeTransition(child: child, opacity: animation),
          bottomNavigationBar: path == '/groups' || path == '/account'
              ? buildBottomNavigationBar(tabsRouter)
              : null,
        );
      },
    ));
  }

  BottomNavigationBar buildBottomNavigationBar(TabsRouter tabsRouter) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: (index) {
        tabsRouter.setActiveIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.source),
          label: 'Groups',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    );
  }
}
