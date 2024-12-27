import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Center(
            child: Container(
              // 부모 : 크기를 주지 않으면 자식크기와 같음
                color: Colors.red,
                child: Padding(
                  // Padding 위젯은 반드시 padding를 포함
                  // 50 + 8 + 8 = 66 * 66
                  // 상하좌우 동일(all)
                  // padding: const EdgeInsets.all(8.0), // 상하좌우 8.0

                  // 대칭 (symmetric)
                  // padding: const EdgeInsets.symmetric(
                  //   horizontal: 32.0,
                  //   vertical: 8.0
                  // ) ,

                  // 상하좌우 별도 (only)
                  // padding: const EdgeInsets.only(
                  //   top: 8.0,
                  //   left: 16.0,
                  //   right: 32.0,
                  //   bottom: 64.0
                  // ),

                  // 좌상우하 순서대로 지정 (fromLTRB)
                  padding: const EdgeInsets.fromLTRB(
                      32.0, 64.0, 16.0, 8.0
                  ),

                  child: Container(
                    // 자식
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
            ),
          )
      ),
    );
  }
}
