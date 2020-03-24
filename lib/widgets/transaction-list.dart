import 'package:expensemanager/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Plates', amount: 70.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Cushion Replacements',
        amount: 11.99,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: transactions.map((tx) {
      return Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange, width: 2)),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Ksh ${tx.amount}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepOrange),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(DateFormat.yMMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ))
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
