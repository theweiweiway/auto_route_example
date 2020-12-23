import 'package:auto_route_example/routers/main_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("account page"),
          RaisedButton(
              child: Text('go to details page'),
              onPressed: () {
                context.router.push(AccountDetailsRoute());
              })
        ],
      ),
    );
  }
}
