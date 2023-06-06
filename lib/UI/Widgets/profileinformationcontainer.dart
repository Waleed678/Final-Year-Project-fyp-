import 'package:flutter/material.dart';
class ProfileInformationContainer extends StatelessWidget {

   final IconData icons1;
  final String iconsname;
  ProfileInformationContainer({required this.icons1,required this.iconsname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[400]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icons1),
                  SizedBox(width: 20),
                  Text(iconsname,style: TextStyle(
                      fontWeight: FontWeight.w600
                  ),),
                ],
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),

      ),
    );
  }
}

