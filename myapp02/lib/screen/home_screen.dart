import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      // 0x투명도(2)색상(6)
        backgroundColor: Color(0xffd0f0e6),
        body: Center(
          child: Column(
            // 상하 가운데 정렬
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Image.asset(
                'asset/img/logo.png',
                width: 350,
              ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0)),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                Image.asset(
                  'asset/img/bear.jpg',
                  width: 350,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0)),
                Text("안녕 하세요",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                )
              ]
          ),
        )
    );
  }
}