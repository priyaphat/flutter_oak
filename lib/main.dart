import 'package:flutter/material.dart';
import 'transaction.dart';

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
        id: 't1', title: 'กระเพาไก่', amount: 200, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'กระเพาเป็ด', amount: 220, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Page'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: transaction.map((tx) {
              return Card(
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Expanded(
                            child: Image.asset("assets/images/t1.png"),
                            flex: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: ListTile(
                                  title: Text(
                                      '${tx.id} - ${tx.title} - ${tx.amount} บาท'),
                                  subtitle: Text('${tx.date}'),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      child: Text("PLAY"),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    TextButton(
                                      child: Text("ADD TO QUEUE"),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        flex: 8,
                      ),
                    ],
                  ),
                ),
                elevation: 8,
                margin: EdgeInsets.all(10),
              );
            }).toList()));
  }
}
