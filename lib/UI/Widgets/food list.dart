import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/Allpetscontainer.dart';
import 'package:fyppetsshop/res.dart';
class FoodsList extends StatefulWidget {
  const FoodsList({Key? key}) : super(key: key);

  @override
  State<FoodsList> createState() => _FoodsListState();
}

class _FoodsListState extends State<FoodsList> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return DogList(hometxt: 'german',image: Res.petsfood,timetxt: 'german',);
        },
      ),
    );
  }
}