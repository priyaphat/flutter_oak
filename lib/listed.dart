// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'models/carder.dart';
import '../models/transaction.dart';
import 'package:http/http.dart' as http;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listed")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  'https://cdn.hellokhunmor.com/wp-content/uploads/2019/11/Trypophobia-1.jpg'),
              FlatButton(
                  child: Text('Test post Http'), //add
                  onPressed: () {
                    http.post(
                        Uri.parse(
                            'https://fluttertest-1cf74-default-rtdb.firebaseio.com/new.json'),
                        body: json.encode({
                          'id': 'test',
                          'title': 'eeee',
                          'amount': '500',
                          'date': '45',
                        }));
                  }),
              FlatButton(
                  child: Text('Test get Http'), //view data
                  onPressed: () {
                    dynamic xx = http
                        .get(Uri.parse(
                            'https://fluttertest-1cf74-default-rtdb.firebaseio.com/new.json'))
                        .then((response) {
                      final extractedate =
                          json.decode(response.body) as Map<String, dynamic>;
                      List<Transaction> transaction = [];
                      extractedate.forEach((prodId, prodData) {
                        transaction.add(Transaction(
                          id: prodData['id'],
                          title: prodData('title'),
                          amount: prodData('amount'),
                          date: DateTime.now(),
                        ));
                      });
                      transaction.map((e) => Carder(e)).toList();
                    });
                  }),
            ],
          ),
        ));
  }
}
