import 'package:flutter/material.dart';
import 'package:myapp02/screen/home_screen.dart';

// asset 폴더 생성 후 - img 폴더 생성 - 이미지 입력
// pubspec.yaml 에 이미지를 등록해야 된다.
void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

