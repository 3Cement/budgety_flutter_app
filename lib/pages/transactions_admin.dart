import 'package:flutter/material.dart';

import './transactions.dart';
import './transaction_create.dart';
import './transaction_list.dart';

class TransactionsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Transactions'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Transactions'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create Transaction',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My Transactions',
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            TransactionCreatePage(),
            TransactionListPage(),
          ],
        ),
      ),
    );
  }
}
