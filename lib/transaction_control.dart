import 'package:flutter/material.dart';

class TransactionControl extends StatelessWidget {
  final Function addTransaction;

  TransactionControl(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addTransaction({'title': 'Transakcja!'});
      },
      child: Text('Add Transaction'),
    );
  }
}
