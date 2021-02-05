import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';
//import 'package:flutter_getx/src/pages/normal/first.dart';

// github : devdabong/flutterGetx
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
              child: Text("일반적인 라우트"),
              onPressed: () {
                // original 일반적인 라우트 방식
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));

                //getX 를 이용한 라우트 방식
                Get.to(FirstPage());
              },
            ),
            ElevatedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                // original named 방식
                //Navigator.of(context).pushNamed("/first");

                // getx named 방식
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: Text("Argument 전달 라우트"),
              onPressed: () {
                // original named 방식
                //Navigator.of(context).pushNamed("/first");

                // getx named 방식
                Get.toNamed("/next", arguments: User(name: "다봉이", age: 28));
                //Get.toNamed("/next", arguments: {"name": "다봉", "age": "28"});
                //Get.toNamed("/next", arguments: "다봉");
                //Get.toNamed("/first");

                // getx normal 방식
                //Get.to(FirstPage(), arguments: "다봉");
              },
            ),
            ElevatedButton(
              child: Text("동적 URL 라우트"),
              onPressed: () {
                Get.toNamed("/user/2354?name=dabong&age=28");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({this.name, this.age});
}
