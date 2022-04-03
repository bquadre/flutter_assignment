import 'package:flutter/material.dart';
import './message.dart';
import './textcontrol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _words = const ['Smile', 'Joy', "Happiness", 'Success'];

  int _wordIndex = 0;

  void _newWord() {
    setState(() {
      _wordIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Flutter Assignment')),
            body: (_wordIndex < _words.length)
                ? TextControl(
                    changeHandler: _newWord,
                    words: _words,
                    wordIndex: _wordIndex)
                : const Message()));
  }
}
