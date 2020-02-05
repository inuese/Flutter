import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //State
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body:Center(
          child: Text(wordPair.asPascalCase),
          /*
          “Pascal case” (“upper camel case”라고도 알려져있음)는 문자열에서 맨 처음 단어를 포함한
            모든 단어의 첫번째 글자가 대문자로 시작하는 형식입니다.
            그래서, “uppercamelcase”는 “UpperCamelCase”가 됩니다.
           */
        ),
      ),
    );
  }
}

