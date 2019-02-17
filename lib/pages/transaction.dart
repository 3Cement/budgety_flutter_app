import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
