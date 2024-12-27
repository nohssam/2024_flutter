import 'package:flutter/material.dart';
import 'package:myapp06/screen/home_screen.dart';

void main() {
  // 원래는 자동으로 실행되는 데
  // 지금은  HomeScreen에서 컨트롤러를 사용하므로
  // 직접 실행 시켜줘야 된다.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}
