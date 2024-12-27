import 'package:flutter/material.dart';

void main() {
  // 플로터 앱 실행
  runApp(
    // MaterialApp 은 항상 최상위에 위치한다.
    // Material 디자인을 할수 있도록 도와 준다.
    MaterialApp(
      // debug 표시를 지우는 명령어
      debugShowCheckedModeBanner: false,
      // 화면 구조를 쉽게 만들수 있도록 도와주는 놈
      // 위젯 -> Widget (화면을 구성하는 모든 요소를 말한다.)

      home: Scaffold(
        // 배경색
        backgroundColor: Colors.black,
        body: Center(
          child: Text("Hello World !!!!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0, // 글자 크기(단위 :픽셀)
          ),
          ),
        ),
      ),
    )
  );
}
