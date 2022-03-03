import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qusetiontext;
  Question(this.qusetiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //เปิดให้เต็มจอ ข้าง
      margin: EdgeInsets.all(10),
      child: Text(
        qusetiontext,
        style: TextStyle(
          fontSize: 28,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
