import 'package:eos_chatting/chatting/chat/chat_bubble.dart';
import 'package:eos_chatting/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:eos_chatting/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp
    (const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: 'Chatting App',
        home: ChatScreen() ,// TODO : 알맞은 위젯 채우기
      //원해는 LoginSignUpScreen
    );
  }
}