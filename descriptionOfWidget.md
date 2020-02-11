### MaterialApp(); 
구글 기본 디자인 Material Desgin을 써서 앱을 만듬

### Scaffold(), 
일반적으로 화면에 아이템들을 배치하는데 사용하는 가장 기본이 되는 위젯


플러터에선 모든게 위젯이다.

만약 여러분이 이전에 React나 Vue로 작업을 해봤다면 이것은 매우 쉬울 것이다. 플러터에서 모든것들이 Widget 이다. 재사용 가능한 작은 컴포넌트로 작업하는 것은 JS프레임워크와 매우 유사하다. 그리고 위젯은 플러터 클래스를 확장하는 다트 클래스에 지나지 않는다.

모든 플러터 위젯은 다음과 같다:


```.{dart}
class ImageWidget extends StatelessWidget {
	// class stuff
}
```

위젯 클래스들은 오직 하나의 요구사항만 있다: 그것은 반드시 다른 위젯을 리턴하는 build 메소드를 가지고 있어야 한다는 것이다. 이 규칙의 유일한 예외는 기본타입(primitive types) (대개 Strings 또는 numbers)을 반환하는 Text와 같은 낮은 수준의 위젯이다.

```.{dart}
class BigText extends StatelessWidget {
	Widget build(context) {
		return new Text('text');
	}
}
```



## 중요 Stateless 위젯은 UI가 그려지면 이후로 값이 변하지 않는다.

https://www.youtube.com/watch?v=62M7skA_SJI


```
class MyApp extends StatelessWidget {
  int count = 0;
  // This widget is the root of your application.

  void increase(){
    count++;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child:Text("${count}"), //변수를 문자열 안에 넣을 때는 ${ } 로 덮어주어야 한다.
            ),
            RaisedButton(onPressed: increase,child:Text("Botton"))
          ],
        )
      )
    );
  }
}
```



## Stateful 위젯을 사용함으로써 State가 변경될 때 마다 UI를 바꿔줄 수 있다.

```
class _MyAppState extends State<MyApp> {

  int count = 0;

  void increase(){
    // setState :: 호출되면 State 클래스한테 State가 변경되었다는 것을 알려준다.
    //State가 변경될 때 마다 UI를 새로 그려준다.
    setState(() {
      count++;
    });
  }

  //실제로 움직이는 UI는 이쪽에서 처리하게 된다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Stateful Widget"),),
          body: Column(
            children: <Widget>[
              Text("${count}"),
              RaisedButton(onPressed: increase, child: Text("increase"),)
              //RaiseButton -> onPressed -> increase() -> setState() ==>  UI가 새로 그려지는 과정
              
            ],
          ),
      ),
    );
  }
}

```


## mainAxisAlignment와 crossAxisAlignment
```
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row Widget"),
        ),
        body: Container(
          width: 300,
          height: 300,
          color: Colors.grey,
          child: Row(
            //mainAxisAlignment는 주 방향 (로우 위젯은 가로)에 있는 위젯들이 어떻게 배치될지를 정한다.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //MainAxisAlignment.spaceAround : 동일하게 간격을 벌리지만 맨 앞과 맨 뒤의 위젯은 반만 간격을 벌린다.
            //MainAxisAlignment.spaceBetween : 맨 처음과 맨 끝 위젯을 제외하고 동일하게 간격을 벌린다.
            //MainAxisAlignment.spaceEvenly : 모든 위젯의 간격을 동등하게 벌린다.

            //crossAxisAlignment는 로우가 세로방향으로 어떻게 배치될지 정할 수 있다.
            crossAxisAlignment: CrossAxisAlignment.start,
            // CrossAxisAlignment는 start, center, end 등을 통해 row 위젯의 위치를 정할 수 있다.
            // CrossAxisAlignment.start
            // CrossAxisAlignment.center
            // CrossAxisAlignment.end

            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                color: Colors.red,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.yellow,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
```

## Container
Container widget : 위젯들이 들어갈 공간을 정하고나 자식 위젯의 위치, 여백 등을 정할 때 쓰임
주로 보조적인 위젯 컬러, 넓이, 높이, 위치 등을 사용할 수 있다.


```
MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Container Widget"),
        ),
        //Container widget : 위젯들이 들어갈 공간을 정하고나 자식 위젯의 위치, 여백 등을 정할 때 쓰임
        //주로 보조적인 위젯 컬러, 넓이, 높이, 위치 등을 사용할 수 있다.

        body: Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          child: Container(
            color:Colors.pinkAccent,
            //width나 height가 없으면 자식의 크기만큼 공간을 차지하게 된다.
            width: 50,
            height: 50,
            child: Text("good"),
            //margin 부모위젯으로 부터 얼마나 떨어져 있는 가를 나타낼 때 사용한다.
            margin: const EdgeInsets.all(8.0), //상하좌우로 8씩 떨어져있음을 나타낸다.
            //padding  자식위젯이 container로 부터 얼마나 떨어져 있는가를 나타낸다.
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),

            alignment: Alignment.center, //원하는 위치에 자식위젯을 옮길 수 있다.

          ),
        ),
      ) ,
    );
```
