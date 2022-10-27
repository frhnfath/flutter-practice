import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = 'Sekolah Koding';

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
            child: Text.rich(TextSpan(
          text: 'Hello',
          children: <TextSpan>[
            TextSpan(
                text: ' beautiful ',
                style: TextStyle(fontStyle: FontStyle.italic)),
            TextSpan(
                text: 'world', style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ))),
      ),
    );
  }
}
