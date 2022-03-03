import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Carder extends StatelessWidget {
  final dynamic tx;
  Carder(this.tx);

  @override
  Widget build(BuildContext context) {
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
                        title:
                            Text('${tx.id} - ${tx.title} - ${tx.amount} บาท'),
                        subtitle: Text(new DateFormat('yyyy-MM-dd – kk:mm')
                            .format(tx.date)),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text("BUY"),
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
  }
}
