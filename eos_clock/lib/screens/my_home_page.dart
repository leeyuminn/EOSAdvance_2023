import 'package:eos/Widget/clock_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('EOS 시계 앱'),
        centerTitle: false,
        leading: Icon(Icons.access_time_filled),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 9,),
              Image.asset('assets/image/img.png', height: 280,),
              Spacer(),
              ClockWidget(),
              Spacer(flex: 7,),
            ],
          ),
        )

      )

    );
  }
}