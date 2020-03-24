import 'package:expensemanager/models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction-list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 't1', title: 'New Plates', amount: 70.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Cushion Replacements',
        amount: 11.99,
        date: DateTime.now())
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        NewTransaction(),
        SizedBox(
          height: 5,
        ),
        TransactionList(_transactions)
      ],
    );
  }
}
