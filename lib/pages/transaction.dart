import 'package:flutter/material.dart';

import 'dart:async';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Transaction details'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('About transaction'),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('DELETE'),
              onPressed: () => Navigator.pop(context, true),
            )
          ],
        ),
      ),
    );
  }
}
