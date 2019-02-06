import 'package:flutter/material.dart';

import '../transaction_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budgety App'),
      ),
      body: TransactionManager(),
    );
  }
}
