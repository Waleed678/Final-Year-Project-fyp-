import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/privacypolicy.dart';
import 'package:fyppetsshop/res.dart';
class sidebarmenu1 extends StatefulWidget {
  const sidebarmenu1({Key? key}) : super(key: key);

  @override
  State<sidebarmenu1> createState() => _sidebarmenu1State();
}

class _sidebarmenu1State extends State<sidebarmenu1> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('hamza khan',),
              accountEmail: Text('hamzakhan@gmail.com',),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset(Res.profilepic,
          height:90,
          width: 90,
          fit: BoxFit.fill,),
        ),
      ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Res.ocean_3605547__480),
                fit: BoxFit.fill
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourite'),

          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('share'),

          ),
          ListTile(
            leading: Icon(Icons.request_page),
            title: Text('Request'),

          ),
          GestureDetector(

            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PravicyPolicy()));
            },
            child: ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),

            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),

          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),

          ),
        ],
      ),
    );
  }
}
