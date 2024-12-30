import 'package:flutter/material.dart';
import 'package:myapp11/screen/home_screen.dart';

void main() {
  runApp(
      MaterialApp(
        // 테마 설정 ( 기존 텍스트의 스타일을 삭제)
        // 나중에는 테마 파일을 만들어서 별도로 분리하자
        theme: ThemeData(
            textTheme: TextTheme(
              // 해당 위치에 가서 테마 지정
              displayLarge: TextStyle(
                color: Colors.white,
                fontSize: 80.0,
                fontFamily: 'parisienne'
              ),
              displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontFamily: 'sunflower'
              ),
              bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'sunflower',
                  fontWeight: FontWeight.bold,
              ),
              bodyMedium:
              TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontFamily: 'sunflower'
              ),
            ),

        ),
        home: HomeScreen(),
      )
  );
}
