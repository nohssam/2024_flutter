import 'package:flutter/material.dart';
import 'package:myapp11/screen/home_screen.dart';
import 'package:myapp11/theme/theme.dart';

void main() {
  runApp(
      MaterialApp(
        // 테마 설정 ( 기존 텍스트의 스타일을 삭제)
        // 나중에는 테마 파일을 만들어서 별도로 분리하자
        theme: appTheme,
        home: HomeScreen(),
      )
  );
}
