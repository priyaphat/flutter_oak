import 'package:flutter/material.dart';
import 'transaction.dart';
import 'carder.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transaction = [
    Transaction(
        id: 'Menu_1', title: 'กระเพาไก่', amount: 200, date: DateTime.now()),
    Transaction(
        id: 'Menu_2', title: 'กระเพาเป็ด', amount: 220, date: DateTime.now()),
    Transaction(
        id: 'Menu_3', title: 'หมูสับ', amount: 810, date: DateTime.now()),
    Transaction(
        id: 'Menu_4', title: 'อะไรสับ', amount: 999, date: DateTime.now()),
    Transaction(
        id: 'Menu_5', title: 'เห็ดสด', amount: 477, date: DateTime.now()),
    Transaction(
        id: 'Menu_6', title: 'เห็ดหยังดี', amount: 452, date: DateTime.now()),
    Transaction(
        id: 'Menu_7', title: 'หืมอะไรนะ', amount: 534, date: DateTime.now()),
    Transaction(
        id: 'Menu_8', title: 'ประยุต', amount: 10, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Page'),
        ),
        body: SingleChildScrollView(
          //ทำให้ มัน ไลด์ ได้ เพราะไม่ใช่ list
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(),
                ...transaction.map((tx) {
                  //...จุดสามตัวข้างหน้า เอา list มา ต่อกัน
                  return Carder(tx);
                }).toList()
              ]),
        ));
  }
}
