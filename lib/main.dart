import 'package:flutter/material.dart';
import 'widgets/widget_myapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyApp',
        // theme: ThemeData(primarySwatch: Colors.green),
        home: App());
  }
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("MYApp")),
        body: SingleChildScrollView(
      //ทำให้ มัน ไลด์ ได้ เพราะไม่ใช่ list
      child: Indexmyapp(),
    ));
  }
}
