import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/Allpetscontainer.dart';
import 'package:fyppetsshop/res.dart';
class DogsList extends StatefulWidget {
  const DogsList({Key? key}) : super(key: key);

  @override
  State<DogsList> createState() => _DogsListState();
}

class _DogsListState extends State<DogsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return DogList(hometxt: 'german',image: Res.dog3,timetxt: 'german',);
        },
      ),
    );
  }
}
