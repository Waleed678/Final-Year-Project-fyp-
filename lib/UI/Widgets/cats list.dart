import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/Allpetscontainer.dart';
import 'package:fyppetsshop/res.dart';
class CatsList extends StatefulWidget {
  const CatsList({Key? key}) : super(key: key);

  @override
  State<CatsList> createState() => _CatsListState();
}

class _CatsListState extends State<CatsList> {
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
          return DogList(hometxt: 'german',image: Res.cats2,timetxt: 'german',);
        },
      ),
    );
  }
}