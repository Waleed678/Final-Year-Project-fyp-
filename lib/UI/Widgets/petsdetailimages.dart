import 'package:flutter/material.dart';
import 'package:fyppetsshop/res.dart';
class PetsDetailsImages extends StatelessWidget {

  final String image;
  PetsDetailsImages({required this.image});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(10),

        ),
      ),
    );
  }
}
