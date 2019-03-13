import 'package:flutter/material.dart';

class TransactionCreatePage extends StatefulWidget {
  final Function addTransaction;

  TransactionCreatePage(this.addTransaction);

  @override
  State<StatefulWidget> createState() {
    return _TransactionCreatePageState();
  }
}

class _TransactionCreatePageState extends State<TransactionCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Transaction Title',
            ),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Transaction Description',
            ),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Transaction Price',
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Save'),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> transaction = {
                'title': titleValue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addTransaction(transaction);
              Navigator.pushReplacementNamed(context, '/transactions');
            },
          )
        ],
      ),
    );
  }
}
