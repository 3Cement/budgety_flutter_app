import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction details'),
      ),
      body: Column(
        children: <Widget>[
          Text('About transaction'),
          RaisedButton(
            child: Text('Back to transactions'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
