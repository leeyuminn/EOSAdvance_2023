import 'package:flutter/material.dart';
import 'package:eos_chat/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:eos_chat/chatting/chat/chat_bubble.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Chatting App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChatScreen());
        //home: LoginSignUpScreen());
  }
}