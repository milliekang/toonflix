### Widget UI

##### `main()`

플러터의 모든 함수는 `main()`으로부터 시작한다. `runApp()` 함수는 `binding.dart`에 정의되어 있으며, 플러터 앱을 시작하는 역할을 한다. 이 함수에 플러터가 시작되었을 때 화면에 노출할 위젯을 전달해주어야 한다.

```dart
void main() {
  runApp(const MyApp());
}
```


### 마테리얼 디자인
구글에서 지정한 플랫 디자인 지침이다. 마테리얼 디자인을 사용함으로서 앱의 용량을 줄일 수 있을 뿐만 아니라, 통일감 있는 디자인 또한 제공할 수 있다.


### constant
`contstant` 값을 사용하므로서, 런타임 대신 컴파일 중에 값을 산정할 수 있음.

### state
* `stateful` : (has state > stateful) data와 UI를 동시에 저장
* `stateless` : fltterUI를 제작하기 위해 있음, 변경되지 않을 데이터를 보여줌
* `setState()` : 데이터의 변경을 감지시킴