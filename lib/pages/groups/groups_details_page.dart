import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class GroupsDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("groups details page"),
          RaisedButton(
              child: Text('back'),
              onPressed: () {
                context.router.pop();
              }),
          RaisedButton(
              child: Text('PRINT CURRENT CONFIG'),
              onPressed: () {
                print(RootRouterDelegate.of(context).currentConfiguration);
              })
        ],
      ),
    );
  }
}
