import 'package:flutter/material.dart';

class Indexmyapp extends StatelessWidget {
  const Indexmyapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          child: Text(
            'Welcome to back!',
            style: TextStyle(fontSize: 40),
          ),
        ),
        SizedBox(height: 20), // เอาไว้คั้น
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(height: 20), // เอาไว้คั้น
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            child: Text('LOG IN'),
            onPressed: () {},
            style:
                ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 40))),
        const SizedBox(height: 10),
        Text('forgot password !!', style: TextStyle(fontSize: 10)),
        const SizedBox(height: 30),
        Text('or',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center),
        SizedBox(height: 20),
        ElevatedButton(
            child: Text('Continue wite Apple'),
            onPressed: () {},
            style:
                ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30))),
      ]),
    );
  }
}
