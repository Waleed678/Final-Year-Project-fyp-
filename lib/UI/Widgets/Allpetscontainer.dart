import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/Petsdetail.dart';
class DogList extends StatefulWidget {
  final String image;
  final String hometxt;
  final String timetxt;
  DogList({required this.timetxt,required this.image,required this.hometxt});

  @override
  State<DogList> createState() => _DogListState();
}

class _DogListState extends State<DogList> {
  bool _isLikeButtonClick = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        width: 147,
        height: 175,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 2),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PetsDetail()));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(widget.image),
                      fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 18,
                        width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)
                      ),
                        child: Center(
                          child: Text(widget.hometxt,style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),),
                        ),
                      ),
                       SizedBox(height: 5),
                      Text(widget.timetxt,style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      )),
                      Text('dates'),
                    ],
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      _isLikeButtonClick = !_isLikeButtonClick ;
                    });
                  },
                      icon: Icon(Icons.favorite_outlined,
                          size: 30,
                          color: _isLikeButtonClick ? Colors.grey[300]:Colors.red)),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
