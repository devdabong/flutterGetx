import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                // 일반적인 라우트 방식
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));

                //getX 를 이용한 라우트 방식
                Get.to(SecondPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
