import 'package:expensemanager/models/transaction.dart';
import 'package:expensemanager/widgets/transaction-list.dart';
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
//  String titleInput;
//  String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
                        controller: titleController,
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Amount"),
                        controller: amountController,
                      ),
                      FlatButton(
                        child: Text('Add Transaction'),
                        textColor: Colors.deepOrange,
                        onPressed: () {
                          print(titleController.text);
                          print(amountController.text);
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TransactionList()
            ],
          ),
        ),
      ),
    );
  }
}
