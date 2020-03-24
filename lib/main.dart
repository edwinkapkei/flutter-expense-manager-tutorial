import 'package:expensemanager/transaction.dart';
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
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Plates', amount: 70.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Cushion Replacements',
        amount: 11.99,
        date: DateTime.now())
  ];

  String titleInput;
  String amountInput;

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
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Title"),
                        onChanged: (value) {
                          titleInput = value;
                        },
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Amount"),
                        onChanged: (value) => amountInput = value,
                      ),
                      FlatButton(
                        child: Text('Add Transaction'),
                        textColor: Colors.deepOrange,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepOrange, width: 2)),
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
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
