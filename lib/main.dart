import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './pages/auth.dart';
import './pages/transaction.dart';
import './pages/transactions.dart';
import './pages/transactions_admin.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _transactions = [];

  void _addTransaction(Map<String, dynamic> transaction) {
    setState(() {
      _transactions.add(transaction);
    });
    print(_transactions);
  }

  void _deleteTransaction(int index) {
    setState(() {
      _transactions.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          accentColor: Colors.lightGreen),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/transactions': (BuildContext context) =>
            TransactionsPage(_transactions),
        '/admin': (BuildContext context) =>
            TransactionsAdminPage(_addTransaction, _deleteTransaction),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'transaction') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                TransactionPage(_transactions[index]['title']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => TransactionsPage(_transactions));
      },
    );
  }
}
