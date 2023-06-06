import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Widgets/profileinformationcontainer.dart';
import 'package:fyppetsshop/res.dart';
class UserInfirmation extends StatefulWidget {
  const UserInfirmation({Key? key}) : super(key: key);

  @override
  State<UserInfirmation> createState() => _UserInfirmationState();
}

class _UserInfirmationState extends State<UserInfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:  () =>Navigator.pop(context) ),
        title: Center(child: Text('Profile')),
        actions: [
          IconButton(icon: Icon(Icons.settings),onPressed: (){},),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius:60,
                      backgroundImage: AssetImage(Res.IMG_20230126_090709_468),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow,
                    ),
                    child: Icon(Icons.edit),
                  ),
                ]
              ),
              SizedBox(height: 15,),
              Text('Hamza khan',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('hamzakhan@gmail.com',style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 40,),

           Expanded(
             child: ListView(
               children: [

                 ProfileInformationContainer(icons1: Icons.privacy_tip,iconsname: 'Privacy',),
                 SizedBox(height: 25,),
                 ProfileInformationContainer(icons1: Icons.people,iconsname: 'Invite Friends',),
                 SizedBox(height: 25,),
                 ProfileInformationContainer(icons1: Icons.help,iconsname: 'Help and Support'),
                 SizedBox(height: 25,),
                 ProfileInformationContainer(icons1: Icons.settings,iconsname: 'Settings',),
                 SizedBox(height: 25,),
                 ProfileInformationContainer(icons1: Icons.exit_to_app,iconsname: 'Exit',),

                 
               ],
             ),
           ),

            ],
          ),
          
        ),
      ),
    );
  }
}
