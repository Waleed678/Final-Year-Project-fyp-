import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Themes/Colors.dart';
import 'package:fyppetsshop/UI/Widgets/all%20catagoreis%20list.dart';
import 'package:fyppetsshop/UI/Widgets/bird%20list.dart';
import 'package:fyppetsshop/UI/Widgets/cats%20list.dart';
import 'package:fyppetsshop/UI/Widgets/dog%20list.dart';
import 'package:fyppetsshop/UI/Widgets/food%20list.dart';
import 'package:fyppetsshop/res.dart';

import 'userinformation.dart';
class AllCatagories extends StatefulWidget {
  const AllCatagories({Key? key}) : super(key: key);

  @override
  State<AllCatagories> createState() => _AllCatagoriesState();
}

class _AllCatagoriesState extends State<AllCatagories> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.pink[200],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.pets,size: 40,color: Colors.pink[200],),
              SizedBox(
              width: 280,
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  labelText: 'Search pets or foods',
                  prefixIcon: Icon(Icons.search)
                ),
              ),
        ),
            ],
          ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(20)
                  ),
                    tabs: [

                      Container(
                        height: 25,
                          child: Center(
                            child: Text('Dogs',style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),),
                          )),
                 Container(
                     height: 25,
                     child: Center(
                       child: Text('Cats',style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),),
                     )),
                  Container(
                      height: 25,
                      child: Center(
                        child: Text('Birds',style: TextStyle(
                        color: Colors.black,
                     fontSize: 14,
                  ),),
                      )),
                  Container(
                      height: 25,
                      child: Center(
                        child: Text('Foods',style: TextStyle(
                        color: Colors.black,
                    fontSize: 14,
                  ),),
                      )),
                  Container(
                      height: 25,
                      child: Center(
                        child: Text('All catagories',style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),),
                      )),

                ]),
              ),
            ),
            Expanded(
              child: TabBarView(

                  children:[
                DogsList(),
                    CatsList(),
                BirdsList(),
                FoodsList(),
                AllCatagoriesList(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
