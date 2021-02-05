import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/named/first.dart';
import 'package:flutter_getx/src/pages/named/second.dart';
import 'package:flutter_getx/src/pages/next.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Home(),
      //original named 방식
      initialRoute: "/",
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },
      //getx named 방식
      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
          transition: Transition.fade,
        ),
        GetPage(
          name: "/first",
          page: () => FirstNamedPage(),
          transition: Transition.fade,
        ),
        GetPage(
          name: "/second",
          page: () => SecondNamedPage(),
          transition: Transition.fade,
        ),
        GetPage(
          name: "/next",
          page: () => NextPage(),
          transition: Transition.fade,
        ),
      ],
    );
  }
}
