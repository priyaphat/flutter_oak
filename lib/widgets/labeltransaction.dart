// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../models/carder.dart';

class Labeltransaction extends StatefulWidget {
  @override
  State<Labeltransaction> createState() => _LabeltransactionState();
}

class _LabeltransactionState extends State<Labeltransaction> {
  var titlecontroller = TextEditingController(); //กำหนดตัวแปร controller
  var amountcontroller = TextEditingController();

  List<Transaction> transaction = [
    Transaction(
        id: 'Menu_1', title: 'กระเพาไก่', amount: '200', date: DateTime.now()),
    Transaction(
        id: 'Menu_2', title: 'กระเพาเป็ด', amount: '220', date: DateTime.now()),
  ];

  void addTransactions(String title, String amount) {
    setState(() {
      transaction.add(Transaction(
          id: 'Menu_add',
          title: '$title',
          amount: amount,
          date: DateTime.now()));
    });
  }

  showAlertDialog(
    BuildContext context,
    String titlecontroller,
    String amountcontroller,
  ) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context); // เอาไว้ปิด dialog ตอนกดเปิดออกมาแล้ว
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(titlecontroller),
      content: Text(amountcontroller),
      actions: [
        okButton,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: //เพิ่มfield input
                  InputDecoration(
                labelText: 'Title',
              ),
              controller: titlecontroller, //เลือกตัวแปร
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
                keyboardType: TextInputType.number, //ใส่ได้แค่ตัวเลข
                decoration: //เพิ่มfield input
                    InputDecoration(
                  labelText: 'Amount',
                ),
                controller: amountcontroller),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: FlatButton(
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                print(titlecontroller.text);
                print(amountcontroller.text);
                if (titlecontroller.text == '' || amountcontroller.text == '') {
                  showAlertDialog(context, 'Error', 'Please Input data');
                } else {
                  setState(() {
                    print('มาแล้ว');
                    addTransactions(
                        titlecontroller.text, amountcontroller.text);
                  });
                }
              },
            ),
          ),
          ...transaction.map((tx) {
            //...จุดสามตัวข้างหน้า เอา list มา ต่อกัน
            return Carder(tx);
          }).toList(),
        ]);
  }
}
