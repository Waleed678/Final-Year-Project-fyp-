import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/Allpetscontainer.dart';
import 'package:fyppetsshop/res.dart';
class BirdsList extends StatefulWidget {
  const BirdsList({Key? key}) : super(key: key);

  @override
  State<BirdsList> createState() => _BirdsListState();
}

class _BirdsListState extends State<BirdsList> {
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
          return DogList(hometxt: 'german',image: Res.parrot,timetxt: 'german',);
        },
      ),
    );
  }
}
