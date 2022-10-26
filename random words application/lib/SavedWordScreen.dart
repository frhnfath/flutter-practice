import 'package:flutter/material.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWords = [];

  SavedWordScreen({required this.savedWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Words'),
        ),
        body: Center(
            child:
                Text(savedWords.join(" - "), style: TextStyle(fontSize: 40))));
  }
}
