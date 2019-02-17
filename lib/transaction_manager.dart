import 'package:flutter/material.dart';

import './transactions.dart';
import './transaction_control.dart';

class TransactionManager extends StatelessWidget {	  
  final List<Map<String, String>> transactions;
  final Function addTransaction;
  final Function deleteTransaction;

  TransactionManager(this.transactions, this.addTransaction, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    print('[TransactionManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: TransactionControl(addTransaction),
        ),
        Expanded(child: Transactions(transactions, deleteTransaction: deleteTransaction))
      ],
    );
  }
}
