import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController();
  bool isForward = true; // 현재 진행 방향
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        Duration(seconds: 2),
            (timer){
              int curr = controller.page!.toInt();
              int next ;

              if(isForward){
                next = curr + 1 ;
                if(next > 4){
                  next = 3;
                  isForward = false;
                }
              }else{
                next = curr -1;
                if(next <0){
                  next = 1 ;
                  isForward = true;
                }
              }


              // 이동 기능
              controller.animateToPage(
                  next,
                  duration: Duration(
                      milliseconds: 500
                  ),
                  curve: Curves.linear);

            },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView: 화면을 좌우(또는 상하)로 스와프하며 페이지를 전환할 수 있는 요소
      body: PageView(
        controller: controller,
        children: [1,2,3,4,5]
          .map((e) =>
            Image.asset(
                'asset/img/image_${e}.jpeg',
                 // 화면이 잘리수 있다.(cover)
                 fit: BoxFit.fill,
            ),
          ).toList(),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    if(timer != null){
      timer!.cancel();
    }
    controller.dispose();
  }

}
