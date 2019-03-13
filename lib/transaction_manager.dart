import 'package:flutter/material.dart';

import './transactions.dart';

class TransactionManager extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  TransactionManager(this.transactions);

  @override
  Widget build(BuildContext context) {
    print('[TransactionManager State] build()');
    return Column(
      children: [Expanded(child: Transactions(transactions))],
    );
  }
}
