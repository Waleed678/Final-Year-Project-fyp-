import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/Chatuserscreen.dart';
class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),

      ),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatUserScreen()));
        },
        child: ListTile(
          leading:CircleAvatar(
           child:  Icon(Icons.person),
          ),
            title: Text('Hamza khan'),
          subtitle: Text('Last user message'),
          trailing: Text('12:00 PM'),
        ),
      ),
    );
  }
}
