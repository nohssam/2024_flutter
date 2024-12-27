import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}){
    print('----HomeScreen 생성자');
  }

  @override
  Widget build(BuildContext context) {
    print('----HomeScreen build');
    return Scaffold(
      body: Center(
        child: IctWidget(),
      ),
    );
  }

}

class IctWidget extends StatelessWidget {
   IctWidget({super.key}){
    print('----ICTWidget 생성자');
  }

  @override
  Widget build(BuildContext context) {
    print('----ICTWidget 빌드');
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}
