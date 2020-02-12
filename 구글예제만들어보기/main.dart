import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Oeschinen Lake Campground",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              "Kandersteg, Switzerland",
              style: TextStyle(color: Colors.grey, fontSize: 24),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Icon(Icons.star, size: 20, color: Colors.orange),
        Text(
          "41",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.call, size: 35, color: Colors.lightBlue),
            Text(
              "call",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: <Widget>[
            Icon(
              Icons.near_me,
              size: 35,
              color: Colors.lightBlue,
            ),
            Text(
              "route",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: <Widget>[
            Icon(
              Icons.share,
              size: 35,
              color: Colors.lightBlue,
            ),
            Text(
              "share",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ],
        ),
      ],
    );

    var textSection = Container(
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(fontSize: 15),
        softWrap: true,
      ),
      padding: EdgeInsets.all(30.0),
    );



    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
            'http://www.nexentire.com/webzine/201704/kr/assets/images/contents/008_01.jpg',
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          ),
          //외부에서 불러오는 이미지가 많을 수록 느리다. -> 통신을 해야하기 때문에
          Padding(padding: EdgeInsets.all(15.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0)),
          buttonSection,
          //Padding(padding: EdgeInsets.all(5.0)),
          textSection,
        ],
      ),
    );
  }
}
