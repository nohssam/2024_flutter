import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key}){
     print("1)HomeScreen- 생성자") ;
  }

  @override
  // State<HomeScreen> createState() => _HomeScreenState();
  State<HomeScreen> createState(){
    print("2)HomeScreen- createState") ;
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.blue;
  @override
  void initState() {
    print("3)State- initState") ;
    super.initState();
  }
  @override
  void didChangeDependencies() {
    print("4)State- didChangeDependencies") ;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("5)State- build") ;
    return Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(
                  onPressed: (){
                     if(color == Colors.blue){
                       color = Colors.red;
                     }else{
                       color = Colors.blue;
                     }
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
   @override
  void deactivate() {
     print("6)State- deactivate") ;
    super.deactivate();
  }
  @override
  void dispose() {
    print("7)State- dispose") ;
    super.dispose();
  }
}
