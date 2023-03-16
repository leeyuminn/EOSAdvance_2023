import 'package:eos/screens/my_home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen, //기본색으로 설정
        fontFamily: 'Teko'
      ),
      home:  MyHomePage(),
    );
  }
}
