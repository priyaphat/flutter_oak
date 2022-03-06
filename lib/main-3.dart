import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'listed.dart';
import 'login.dart';
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
        // home: App(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => App(),
          Listed.routeName: (ctx) => Listed(),
          Login.routeName: (ctx) => Login(),
        });
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
