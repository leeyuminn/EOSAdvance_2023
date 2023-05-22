
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../chatting/chat/message.dart';
import '../chatting/chat/new_message.dart';
import '../config/palette.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _authentication = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                _authentication.signOut();
              },
              icon: const Icon(
                Icons.exit_to_app_rounded,
                color: Colors.white,
              ))
        ],
        backgroundColor: Palette.backgroundColor,
      ),
      body: Container(
        child: Column(
          children: const [
            Expanded(
              flex: 2,
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}