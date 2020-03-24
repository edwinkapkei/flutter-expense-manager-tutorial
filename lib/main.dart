import 'package:expensemanager/models/transaction.dart';
import 'package:expensemanager/widgets/new_transaction.dart';
import 'package:expensemanager/widgets/transaction-list.dart';
import 'package:expensemanager/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text("Chart"),
                  elevation: 1,
                ),
              ),
              UserTransactions()
            ],
          ),
        ),
      ),
    );
  }
}
