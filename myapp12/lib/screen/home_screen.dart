import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp12/component/number_to_image.dart';
import 'package:myapp12/constant/color.dart';
import 'package:myapp12/screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [123,456,789];
  // 되돌아오는 값을 받기 위한 변수
  int maxNumber = 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Header(onPressed:onSettingIconPressed),
                _Body(numbers: numbers),
                _Footer(
                  onPressed:generateRandomNumber,
                ),
              ],
            ),
          ),
      ),
    );
  }
  onSettingIconPressed() async{
    // SettingScreen 호출 = 되돌아 올때 값을 받는다.
    final result = await Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context){
                // 다시 넘어갈때 값을 주자
                return SettingScreen(maxNumber: maxNumber);
              }
          ),
        );
      maxNumber = result;
  }


  generateRandomNumber(){
    // 난수 발생
    final rand = Random();
    final num1 = rand.nextInt(maxNumber); // 0-999
    final num2 = rand.nextInt(maxNumber); // 0-999
    final num3 = rand.nextInt(maxNumber); // 0-999
    setState(() {
      numbers=[num1,num2,num3];
    });
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;
  const _Header({
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '렌덤 숫자 생성기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
            color: redColor,
            onPressed: onPressed,
            icon: Icon(Icons.settings)
        )
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers ;

  const _Body({
    required this.numbers ,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: numbers
              .map((e) => NumberToImage(number: e)).toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  // onPressed 이벤트 처리하는 자료형
  final VoidCallback onPressed;

  const _Footer({
    required this.onPressed ,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor,
          foregroundColor: Colors.white
      ),
      child: Text('생성하기'),
    );
  }
}
