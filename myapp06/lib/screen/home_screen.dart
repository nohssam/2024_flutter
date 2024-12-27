import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://javastudy.store/');

class HomeScreen extends StatelessWidget {
  // .. 의미는  실행한 결과값을 반환하는 것이 아니라 실행되는 대상을 반환하는 뜻
  WebViewController controller = WebViewController()
    // ..setJavaScriptMode(JavaScriptMode.disabled)     // 비활성화
    // ..setJavaScriptMode(JavaScriptMode.unrestricted) // 활성화
    ..enableZoom(true)  // 두 손가락으로 확대 / 축소
    ..loadRequest(homeUrl);
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('한국 ICT 인재 개발원',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                controller.loadRequest(homeUrl);
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )
          )
        ],
      ),
     body: WebViewWidget(
         controller: controller
     ),
    );
  }
}
