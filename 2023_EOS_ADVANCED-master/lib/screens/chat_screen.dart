import '../../config/palette.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title:Text('Chat screen',selectionColor: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(onPressed: null, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.input_sharp,color: Colors.white),),
          ]
      ),
      body:StreamBuilder(
        stream: FirebaseFirestore.instance.collection('/chats/WG8P2kHaLg1xlEsCGb0B/message').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final docs = snapshot.data!.docs;
          return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    docs[index]['text'],
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              }
          );
        },
      ),
    );
  }
}
