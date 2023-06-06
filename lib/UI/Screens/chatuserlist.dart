import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/chatlist.dart';
class ChatUSerList extends StatefulWidget {
  const ChatUSerList({Key? key}) : super(key: key);

  @override
  State<ChatUSerList> createState() => _ChatUSerListState();
}

class _ChatUSerListState extends State<ChatUSerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LetsChat'),
        actions: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.search),onPressed: (){},),
              IconButton(icon: Icon(Icons.line_weight_rounded),onPressed: (){},),
            ],
          ),
        ],
      ),
      body:ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
        return ChatList();
      },),
    );
  }
}