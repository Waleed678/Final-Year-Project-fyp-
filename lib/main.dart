import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/Homescreen.dart';
import 'package:fyppetsshop/UI/Screens/Allcatagories.dart';
import 'package:fyppetsshop/UI/Screens/Petsdetail.dart';
import 'package:fyppetsshop/UI/Screens/chatuserlist.dart';
import 'package:fyppetsshop/UI/Screens/privacypolicy.dart';
import 'package:fyppetsshop/UI/Screens/userinformation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
