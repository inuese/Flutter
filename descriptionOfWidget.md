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

```.{dart}
class BigText extends StatelessWidget {
	Widget build(context) {
		return new Text('text');
	}
}
```
