import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text("i_am_asifnafees",style:
            TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            Icon(Icons.access_time_rounded),
            Icon(Icons.add_box_outlined),
            Icon(Icons.menu_outlined)
          ],),
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(children: [
              CircleAvatar(radius: 38,
                backgroundImage: AssetImage('assets/images/0.jpg'),),
              SizedBox(height: 10,),
              Text('Asif Nafees',style: TextStyle(fontWeight: FontWeight.w700),)
            ],),
            Column(children: [
              Text("56",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
              Text('posts')
            ],),
            Column(children: [
              Text("4000",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18)),
              Text('followers')
            ],),
            Column(children: [
              Text("40",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18)),
              Text('following')
            ],)
          ],),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Flutte and Content Developer\n Firebase,Getx,REST APIs'),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           Container(height: 30,width: 120,
             decoration: BoxDecoration(color: Colors.grey.shade200),
             child: Center(child: Text("Edit profile")),),
           Container(height: 30,width: 120,
             decoration: BoxDecoration(color: Colors.grey.shade200),
             child: Center(child: Text("Share profile")),),
           Container(height: 30,width: 30,
             decoration: BoxDecoration(color: Colors.grey.shade200),
             child: Center(child: Icon(Icons.person_add)),),
         ],),
          SizedBox(height: 10,),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Discover people',style: TextStyle(fontSize: 18),),
                Text('See all',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),)
              ],),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                child: Row(children: [
                  Follow(name: "AI Model 01",
                      subTitle: "This is dummy model",
                      image: "assets/images/1.jpg"),SizedBox(width: 20,),
                  Follow(name: "AI Model 01",
                      subTitle: "This is dummy model",
                      image: "assets/images/2.jpg"),SizedBox(width: 20,),
                  Follow(name: "AI Model 01",
                      subTitle: "This is dummy model",
                      image: "assets/images/3.jpg"),SizedBox(width: 20,),
                  Follow(name: "AI Model 01",
                      subTitle: "This is dummy model",
                      image: "assets/images/4.jpg"),SizedBox(width: 20,),
                  Follow(name: "AI Model 01",
                      subTitle: "This is dummy model",
                      image: "assets/images/5.jpg"),


                ],),
              ),
            )
          ],)

        ],),
      ),
    );
  }
}
class Follow extends StatelessWidget {
  final String name;
  final String subTitle;
  final String image;
  const Follow({super.key,
  required this.name,
  required this.subTitle,
  required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(radius: 40,backgroundImage:
      AssetImage(image),),
      SizedBox(height: 10,),
      Text(name,style: TextStyle(fontWeight: FontWeight.w700),),
      Text(subTitle,style: TextStyle(fontSize: 12,color: Colors.grey),),
      SizedBox(height: 20,),
      Container(height: 30,width: 120,
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
       borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text('Follow',
        style: TextStyle(color: Colors.white),)),),
    ],);
  }
}

