import 'package:flutter/material.dart';

import '../transaction_manager.dart';

class TransactionsPage extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  TransactionsPage(
      this.transactions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Transactions'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: TransactionManager(transactions),
    );
  }
}
