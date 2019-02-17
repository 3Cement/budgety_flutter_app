import 'package:flutter/material.dart';

import './transactions.dart';
import './transaction_control.dart';

class TransactionManager extends StatefulWidget {
  final String startingTransaction;

  TransactionManager({this.startingTransaction}) {
    print('[TransactionManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[TransactionManager Widget] createState()');
    return _TransactionManagerState();
  }
}

class _TransactionManagerState extends State<TransactionManager> {
  List<String> _transactions = [];

  @override
  void initState() {
    print('[TransactionManager State] initState()');
    if (widget.startingTransaction != null) {
      _transactions.add(widget.startingTransaction);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(TransactionManager oldWidget) {
    print('[TransactionManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addTransaction(String transaction) {
    setState(() {
      _transactions.add(transaction);
    });
  }

  void _deleteTransaction(int index) {
    setState(() {
      _transactions.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[TransactionManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: TransactionControl(_addTransaction),
        ),
        Expanded(child: Transactions(_transactions, deleteTransaction: _deleteTransaction))
      ],
    );
  }
}
