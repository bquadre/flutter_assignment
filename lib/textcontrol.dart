import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final List<String> words;
  final int wordIndex;
  final VoidCallback changeHandler;

  const TextControl(
      {Key? key,
      required this.words,
      required this.wordIndex,
      required this.changeHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(words[wordIndex],
                style: TextStyle(fontSize: 28), textAlign: TextAlign.center)),
        RaisedButton(child: Text('Click Me'), onPressed: changeHandler)
      ],
    );
  }
}
