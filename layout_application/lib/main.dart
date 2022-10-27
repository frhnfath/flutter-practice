import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome to Flutter'),
            ),
            body: Container(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                        leading: Icon(Icons.people_sharp),
                        title: Text('Farhan Fathurrahman'),
                        subtitle: Text('@Frhnfath')),
                    Text('This is Card', style: TextStyle(fontSize: 40))
                  ],
                )))));
  }
}
