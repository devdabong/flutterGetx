import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';
//import 'package:flutter_getx/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("getx 라우트"),
              onPressed: () {
                // 일반적인 라우트 방식
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));

                //getX 를 이용한 라우트 방식
                Get.to(FirstPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
