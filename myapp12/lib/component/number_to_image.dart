import 'package:flutter/material.dart';

// home, setting 에 공통된 부분을 별도롤 추출
// 생성자를 이용해서 숫자가 들어오고 들어온 숫자를 이미지로 만든다.
class NumberToImage extends StatelessWidget {

  final int number;

  const NumberToImage({
    required this.number,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number.toString().split('')
          .map(
            (k) => Image.asset(
              'asset/img/${k}.png',
              width: 70.0,
              height: 80.0,
            ),
          ).toList()
    );
  }
}
