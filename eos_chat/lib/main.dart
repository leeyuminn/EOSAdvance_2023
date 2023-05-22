import 'package:eos_chat/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eos_chat/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/color_service.dart';
import 'config/palette.dart';
import 'firebase_options.dart';
import 'package:eos_chat/chatting/chat/chat_bubble.dart';

void main() async {
  // flutter core 초기화
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chatting App',
        theme: ThemeData(
          primarySwatch: ColorService.createMaterialColor(Palette.appbarColor),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const ChatScreen();
            }
            return const LoginSignUpScreen();
          },
        ));
  }
}