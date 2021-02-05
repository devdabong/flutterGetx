import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //URL로 파라미터 받기 (스프링에서 @RequestParam 같은 것)
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요"),
            Text("${Get.parameters['age']}세"),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
