import 'package:flutter/material.dart';
import 'package:myapp03/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면구조를 쉽게 구성하는 클래스
    return Scaffold(
      // SafeArea: 상태바를 제외한 위치부터 위젯을 나옴
      body: SafeArea(
        child: Container(
          // 너비를 최대로 늘리자 (가운데 정렬된다.)
          // width: double.infinity,
          // height: double.infinity,
          color: Colors.black,
            child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // mainAxisSize: MainAxisSize.max, // 기본값
            // mainAxisSize: MainAxisSize.min, // 최소값

            // crossAxisAlignment: CrossAxisAlignment.center, // 기본값
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.stretch, // 최대 차지

           // child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             // mainAxisSize: MainAxisSize.max, // 기본값
             // mainAxisSize: MainAxisSize.min, // 최소값
             // crossAxisAlignment: CrossAxisAlignment.center, // 기본값
             // crossAxisAlignment: CrossAxisAlignment.start,
             // crossAxisAlignment: CrossAxisAlignment.end,
             // crossAxisAlignment: CrossAxisAlignment.stretch, // 최대 차지

            children:
                  // [
                  //   Container(
                  //     height: 50.0,
                  //     width: 50.0,
                  //     color: Colors.red,
                  //   ),
                  //   Container(
                  //     height: 50.0,
                  //     width: 50.0,
                  //     color: Colors.orange,
                  //   ),
                  //   Container(
                  //     height: 50.0,
                  //     width: 50.0,
                  //     color: Colors.yellow,
                  //   ),
                  // ],
            //   colors.map(
            //       (e) => Container(
            //           height: 50.0,
            //           width: 50.0,
            //           color: e,
            //       ),
            // ).toList(),
            [
               // Expanded 남은 공간 차지
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.red,
                  ),
              ),

              // 다른  Expanded 가 남은 공간을 차지하지 못한다.
              Flexible(
                   flex: 2,
                   // fit: FlexFit.tight, // Expanded와 같은 기능 한다.
                   fit: FlexFit.loose, // 기본값(지정된 크기만 차지
                   child: Container(
                   height: 50.0,
                    width: 50.0,
                   color: Colors.green,
                  ),
                ),

              Expanded(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.blue,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
