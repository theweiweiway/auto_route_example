import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class AccountDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("account details page"),
          RaisedButton(
              child: Text('back'),
              onPressed: () {
                context.router.pop();
              })
        ],
      ),
    );
  }
}
