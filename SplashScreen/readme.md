## Splash Screen 구축

플러터 앱이 시작할 때는 다트가 초기화되는데 필요한 약간의 시간이 필요합니다. 또한 안드로이드 앱이 초기화되는데도 일정한 시간이 필요합니다. 
플러터는 안드로이드 앱이 초기화 되는 동안 Lauch Screen을 출력할 수 있도록 지원한다. 
또한 플러터가 초기화되는 동안 Splash Screen을 출력할 수 있도록 지원한다.


## Android Launch Screen

모든 안드로이드 앱은 안드로이드 운영체제가 앱의 프로세스를 생성하는 초기화 시간이 존재한다.
안드로이드에서는 초기화 시간동은 Drawable을 출력하는 Launch Screen을 제공한다.



## Launch Theme 정의하기

styles.xml에서 windowBackground에 Drawable을 설정하면 Launch Screen으로 출력되게 된다.

```.{xml}
<style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">

    <item name="android:windowBackground">@drawable/launch_background</item>

</style>
```


### Reference
- https://nsinc.tistory.com/210
- https://flutter.dev/docs/development/ui/splash-screen/android-splash-screen
