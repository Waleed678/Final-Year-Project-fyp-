import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/Allcatagories.dart';
import 'package:fyppetsshop/UI/Screens/chatuserlist.dart';
import 'package:fyppetsshop/UI/Screens/userinformation.dart';
import 'package:fyppetsshop/UI/Themes/Colors.dart';
import 'package:fyppetsshop/UI/Themes/fonts.dart';
import 'package:fyppetsshop/UI/Widgets/Allpetscontainer.dart';
import 'package:fyppetsshop/UI/Widgets/drawer.dart';
import 'package:fyppetsshop/UI/Widgets/homeadvertisementContainer.dart';
import 'package:fyppetsshop/res.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  sidebarmenu1(),
     appBar: AppBar(
       backgroundColor: Colors.pink[200],
       title:Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           IconButton(icon: Icon(Icons.chat,
             color: Colors.green,size: 35,), onPressed: () {
             Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const ChatUSerList()));
           },),
           SizedBox(width: 15,),
           GestureDetector(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const UserInfirmation()));
             },
             child: CircleAvatar(
                 radius: 20,
                 backgroundColor: kRed,
                 backgroundImage: AssetImage('asset/profilepic.webp')
             ),
           ),
         ],
       ),
     ),
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: SingleChildScrollView(
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 10,),

               SizedBox(
                 height: 20,
               ),
               Container(
                 height: 200,
                 child: PageView(
                   scrollDirection: Axis.horizontal,
                   controller: _controller,
                   children: [
                     HomeAdvertisement(),
                     HomeAdvertisement(),
                     HomeAdvertisement(),
                   ],
                 ),
               ),
               SizedBox(
                 height: 10,
               ),
               Center(child: SmoothPageIndicator(controller:_controller, count: 3)),

               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Categories',style:extralarge),
                   GestureDetector(
                     onTap:  () {
                       Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const AllCatagories()));
                     },
                     child: Container(
                       height: 30,
                         width: 60,
                         child: Text('Seeall',style:extralarge,)),
                   ),
                 ],
               ),
               SizedBox(height: 20,),
               Text('Pets',style: extralarge),
               SizedBox(height: 10),
               Container(
                 height: 195,
                 child:ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     DogList(timetxt: 'dog1', image: Res.dog3, hometxt: 'german'),
                     DogList(timetxt: 'dog1', image: Res.dog2, hometxt: 'pitbull'),
                     DogList(timetxt: 'dog1', image: Res.dog11, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog3, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog2, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog11, hometxt: 'german'),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Text('Foods',style: extralarge),
               SizedBox(height: 10),
               Container(
                 height: 195,
                 child:ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     DogList(timetxt: 'dog1', image: Res.petsfood, hometxt: 'British'),
                     DogList(timetxt: 'dog1', image: Res.petsfood, hometxt: 'American'),
                     DogList(timetxt: 'dog1', image: Res.petsfood, hometxt: 'Austrilian'),
                     DogList(timetxt: 'dog1', image: Res.petsfood, hometxt: 'German'),
                     DogList(timetxt: 'dog1', image: Res.petsfood, hometxt: 'Pakistani'),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
    );
  }
}
