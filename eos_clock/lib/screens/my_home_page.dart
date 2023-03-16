import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EOS 시계 앱'),
        leading: Icon(Icons.access_time_filled),
      ),
      body: Center(
        child: Image.asset('assets/image/img.png', width: double.infinity, height: double.infinity,),
      ),
      bottomNavigationBar: BottomAppBar(child: Text('hi')),
    );
  }
}