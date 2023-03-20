import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class ClockWidget extends StatefulWidget {
  const ClockWidget({Key? key}) : super(key: key);

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {

  late Timer _timer;
  late String formattedTime = '';
  late String formattedDate = '';

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) { //duration(타이머를)을 1초에 한 번씩 바꿔주겠다.
      setState(() { //상태가 바뀔 때 쓰는 함수
        DateTime now = DateTime.now(); //현재 시각으로 설정
        formattedTime = DateFormat('h:mm:ss a').format(now); //now를 저 포맷으로
        formattedDate = DateFormat('yyyy.MM.dd EEE').format(now); //
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(formattedTime,
          style: TextStyle(color: Colors.black, fontSize: 65, height: 1),),
        Text(formattedDate,
          style: TextStyle(color: Colors.grey, fontSize: 30, height: 1),),

      ],
    );
  }
}
