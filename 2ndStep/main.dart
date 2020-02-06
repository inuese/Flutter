import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*
  stateless 위젯은 변경 불가능(immutable) 이므로 속성을 변경할 수 없습니다.
  즉, 모든 값이 final 입니다.

  Stateful 위젯은 위젯의 수명동안 변경될 수 있는 상태를 유지합니다.
  Stateful 위젯은 최소 두 개 이상 클래스가 필요합니다:
    1) StatefulWidget 클래스가 2) State 클래스 의 인스턴스를 생성합니다.
    StatefulWidget 클래스 그자체는 변경불가능합니다. 하지만 State 클래스가 위젯의 수명동안 상태를 유지합니다.
   */
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  //리스트 뷰 만들기
  Widget _buildSuggestions(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i){
          if(i.isOdd) return Divider();

          final index = i~/ 2;
          if(index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

