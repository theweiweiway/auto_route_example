import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/routers/main_router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AutoTabsRouter(
      lazyLoad: true,
      routes: [GroupsFeature(), AccountFeature()],
      duration: Duration(milliseconds: 400),
      builder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;
        final currentPath = context.router.currentRoute.path;
        print(currentPath); // prints empty string
        return Scaffold(
          appBar: AppBar(
            title: Text(tabsRouter.currentRoute.path),
          ),
          body: FadeTransition(child: child, opacity: animation),
          bottomNavigationBar: currentPath != '/groups/details'
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
