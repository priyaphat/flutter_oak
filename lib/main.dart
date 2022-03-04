// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'models/transaction.dart';
import 'models/carder.dart';
import 'widgets/labeltransaction.dart';

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
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Page'),
        ),
        body: SingleChildScrollView(
          //ทำให้ มัน ไลด์ ได้ เพราะไม่ใช่ list
          child: Labeltransaction(),
        ));
  }
}
