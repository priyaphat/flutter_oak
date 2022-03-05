import 'package:flutter/material.dart';
import 'models/carder.dart';
import '../models/transaction.dart';

void main() => runApp(Listed());

class Listed extends StatelessWidget {
  static const routeName = '/listed';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print("args");
    print(args);
    return MaterialApp(title: 'listed', home: listbody());
  }
}

class listbody extends StatefulWidget {
  @override
  State<listbody> createState() => _listbodyState();
}

class _listbodyState extends State<listbody> {
  List<Transaction> transaction = [
    Transaction(
        id: 'Menu_1', title: 'กระเพาไก่', amount: '200', date: DateTime.now()),
    Transaction(
        id: 'Menu_2', title: 'กระเพาเป็ด', amount: '220', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listed")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...transaction.map((e) => Carder(e)).toList(),
            ],
          ),
        ));
  }
}
