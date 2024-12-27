import 'package:flutter/material.dart';
import 'package:myapp04/const/colors.dart';

class HomeScreen extends StatelessWidget {
  // 생성자
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: colors.map(
                            (e)=> Container(
                              height: 50.0,
                              width: 50.0,
                              color: e,
                            ),
                    ).toList()
                  ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        color:Colors.orange
                      )
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: colors.map(
                          (e)=> Container(
                        height: 50.0,
                        width: 50.0,
                        color: e,
                      ),
                    ).toList()
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                      // colors
                      // .asMap()
                      // .entries
                      // .where((entry) => entry.key == 3)
                      // .map(
                      //     (e)=> Container(
                      //   height: 50.0,
                      //   width: 50.0,
                      //   color: e.value,

                      colors
                      .where((color) => colors.indexOf(color) == 3)
                      .map(
                        (color) => Container(
                             height: 50.0,
                             width: 50.0,
                             color: color,
                          ),
                        ).toList()

                ),
              ],
            ),
        ),
    );
  }
}
