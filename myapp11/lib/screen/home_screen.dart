import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 배경색 주고 나머지색 삭제하자
      backgroundColor: Colors.pink[100], // 100-900(강도)
      // 안전지대, 시스템 관련된 글자들이 표현되는 부분 제외한 영역
      body: SafeArea(
        top: true,
        bottom: false,
      // SizeBox는 높이와 너비를 정하는데 편리한 위젯(크기를 정하는 위젯)
        child: SizedBox(
          // 가용한 너비를 모두 차지하도록 설정
          // width: double.infinity,
          // 화면의 전체 너비를 가져와서 위젯의 너비로 설정
          width: MediaQuery.of(context).size.width,
          child: Column(
          // 화면을 1:1 비율 처리
            children: [
              _Top(
                // 생성자를 이용해서 정보 전달,
                  selectDate: selectDate,
                  onPressed: onHartPressed
              ),
              _Bottom()
            ],
          ),
        ),
      ),
    );
  }
  void onHartPressed(){
      showCupertinoDialog(
          context: context,
          // 배경을 클릭해도 닫을 수 있도록
          barrierDismissible: true,
          builder: (BuildContext context){
            return Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white,
                height: 300.0,
                // 데이터피커 호출
                child: CupertinoDatePicker(
                  // 날짜만 선택
                  mode: CupertinoDatePickerMode.date,
                  // 오늘이후로는 선택할 수 없게 하자
                  initialDateTime: selectDate,
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime date){
                    // print(date);
                    // 화면을 다시 빌드하자
                    setState(() {
                      selectDate = date ;
                    });
                  },
                  // 월, 일, 년 => 년,월,일 표시변경
                  dateOrder: DatePickerDateOrder.ymd,
                ),
              ),
            );
          }
      );
  }
}

class _Top extends StatefulWidget {
  final selectDate ;
  final VoidCallback? onPressed;
  // 생성자
  const _Top({
  // 부모 위젯에서 정보를 받자 (selectDate);
    required this.selectDate,
    required this.onPressed,
    super.key});

  @override
  State<_Top> createState() => _TopState();
}

class _TopState extends State<_Top> {
   // 상태관리를 상위위젯로 올리자 (공통된 부분은 위로 올리자 )
  // DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
        child: Container(
          child: Column(
            children: [
              Text(
                'U&I',
                // 테마 지정
                style: textTheme.displayLarge,
              ),
              Text(
                '우리 처음 만난 날',
                // 테마 지정
                style: textTheme.displayMedium,
              ),
              Text(
                // 상위 위젯에서 받은 변수는 무조건 widget.
                '${widget.selectDate.year}. ${widget.selectDate.month}. ${widget.selectDate.day}. ',
                style: textTheme.bodyLarge,
              ),
              IconButton(
                // 하트를 누르면 데이터피커 다이얼로그 나오게 하자
                // 상위 위젯으로 올린다.
                onPressed: widget.onPressed,
                color: Colors.red,
                iconSize: 60.0,
                icon: Icon(
                  Icons.favorite, // 하트모양
                ),
              ),
              Text(
               // 'D + 1',
                // build 아래에 now 변수 만들자 (날짜와 날짜 비교하기 위해서)
                'D + ${now.difference(widget.selectDate).inDays + 1}',
                style: textTheme.bodyMedium,
              ),
            ],
          ),
        )
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: Image.asset(''
              'asset/img/middle_image.png'
          ),
        )
    );
  }
}
