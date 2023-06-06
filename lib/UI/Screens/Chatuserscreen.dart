import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/ChatuserScreentextfeild.dart';
import 'package:fyppetsshop/res.dart';
class ChatUserScreen extends StatefulWidget {
  const ChatUserScreen({Key? key}) : super(key: key);

  @override
  State<ChatUserScreen> createState() => _ChatUserScreenState();
}

class _ChatUserScreenState extends State<ChatUserScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: AppBar(
  automaticallyImplyLeading: false,
  flexibleSpace:InkWell(
    onTap: (){},
    child: Row(
        children: [
          IconButton(onPressed: () =>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
          CircleAvatar(
            backgroundImage: AssetImage(Res.profilepic),
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hamza khan',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              Text('Last Seen'),
            ],
          ),
        ],
    ),
  ),
),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ChatUSerScrerenTextFEild(),
          ],
        ),
      ),
    );
  }
}
