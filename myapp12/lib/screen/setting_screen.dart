import 'package:flutter/material.dart';
import 'package:myapp12/component/number_to_image.dart';
import 'package:myapp12/constant/color.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;
  const SettingScreen({
    required this.maxNumber,
    super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  _Number(maxNumber: maxNumber),
                  _Slider(currvalue: maxNumber,
                      onChanged: onSliderChanged,
                  ),
                  _Button(onPressed: onSavePressed),
            ]
          ),
        ),
      ),
    );
  }
  onSliderChanged(double value){
    setState(() {
      maxNumber = value;
    });
  }
  onSavePressed(){
    // 되돌아 갈때 값을 가지고 되돌아 가자
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;

  const _Button({
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      onPressed:onPressed,
      child: Text('저장 !'),
    );
  }
}

class _Number extends StatelessWidget {
  final maxNumber;
  const _Number({
    required this.maxNumber,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: NumberToImage(number: maxNumber.toInt()),
        )
    );
  }
}

class _Slider extends StatelessWidget {
  final double currvalue ;
  final ValueChanged<double> onChanged;

  const _Slider({
    required this.currvalue,
    required this.onChanged,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: currvalue,
        min : 1000,
        max : 100000,
        onChanged:onChanged,
    );
  }
}
