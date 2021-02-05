import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //original 뒤로가기 방식
                //Navigator.of(context).pop();

                //getx 뒤로가기
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                //original 페이지 히스토리 없애고 홈으로 이동
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => Home()),
                //     (route) => false);

                //getx 히스토리 없애고 홈으로 이동
                Get.offAll(Home());
              },
            )
          ],
        ),
      ),
    );
  }
}
