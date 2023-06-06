import 'package:flutter/material.dart';
class HomeAdvertisement extends StatefulWidget {
  const HomeAdvertisement({Key? key}) : super(key: key);

  @override
  State<HomeAdvertisement> createState() => _HomeAdvertisementState();
}

class _HomeAdvertisementState extends State<HomeAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage('asset/catspng5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 60),
            child: Column(
              children: [
                Text('Hello Farhan ',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Ready for an amazing\nexperience',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
