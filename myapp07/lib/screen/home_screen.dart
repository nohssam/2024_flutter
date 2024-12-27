
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // 좌우 센터
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 상하 센터
          children: [
            ElevatedButton(
                onPressed: (){
                  if(color == Colors.blue){
                    color = Colors.red;
                  }else{
                    color = Colors.blue;
                  }
                  // 빌드 함수를 다시 실행하라는 명령어( StatefulWidget)
                  setState(() {});
                },
                child: Text('색상변경'),
            ),
            SizedBox(height: 32.0,),
            Container(
              width: 50.0,
              height: 50.0,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
