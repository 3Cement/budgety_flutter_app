import 'package:flutter/material.dart';

import './pages/transaction.dart';

class Transactions extends StatelessWidget {
  final List<String> transactions;

  Transactions([this.transactions = const []]) {
    print('[Transactions Widget] Constructor');
  }

  Widget _buildTransactionItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          // Image.asset('assets/food.jpg'),
          Text(transactions[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => TransactionPage(),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTransactionList() {
    Widget transactionCard;
    if (transactions.length > 0) {
      transactionCard = ListView.builder(
        itemBuilder: _buildTransactionItem,
        itemCount: transactions.length,
      );
    } else {
      transactionCard = Center(
        child: Text('No Transactions fouund, please add some'),
      );
    }
    return transactionCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Transactions Widget] build()');
    return _buildTransactionList();
  }
}
