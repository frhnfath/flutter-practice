import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'SavedWordScreen.dart';

class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWord> {
  var savedWords = [];
  String randomWord = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void saveWord() {
    savedWords.add(randomWord);
    // new page
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SavedWordScreen(savedWords: savedWords)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Flutter Application'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(randomWord, style: TextStyle(fontSize: 40)),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: saveWord)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
