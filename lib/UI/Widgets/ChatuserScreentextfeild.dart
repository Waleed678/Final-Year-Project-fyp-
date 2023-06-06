import 'package:flutter/material.dart';
class ChatUSerScrerenTextFEild extends StatefulWidget {
  const ChatUSerScrerenTextFEild({Key? key}) : super(key: key);

  @override
  State<ChatUSerScrerenTextFEild> createState() => _ChatUSerScrerenTextFEildState();
}

class _ChatUSerScrerenTextFEildState extends State<ChatUSerScrerenTextFEild> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.blueAccent,)),
                  const Expanded(child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Type Something',
                      border: InputBorder.none,
                    ),
                  )),
                  IconButton(onPressed: (){}, icon: Icon(Icons.image,color: Colors.blueAccent)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_rounded,color: Colors.blueAccent)),
                ],
              ),
            ),
          ),
          MaterialButton(onPressed: (){},
            minWidth: 0,
            padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 10),
            shape: CircleBorder(),
            color: Colors.green,
            child: Icon(Icons.send,color:Colors.white,size: 28,),
          ),
        ],
      ),
    );
  }
}
