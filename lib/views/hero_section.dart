import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final String image;
  final String name;
  final IconData iconData1;
  final String subTitle;
  final IconData iconData2;

  const HeroSection({super.key,
  required this.image,
    required this.name,
    required this.iconData1,
    required this.subTitle,
    required this.iconData2,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          CircleAvatar(backgroundImage:
          AssetImage(image),radius: 17,),
          Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(name),
            Row( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Icon(iconData1),
              Text(subTitle),
            ],)
          ],),
          Icon(iconData2)
        ],),
      ),
      Image(image: AssetImage(image)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
            Icon(Icons.favorite_border),
            SizedBox(width: 18,),
            Icon(Icons.messenger_outline_outlined),
              SizedBox(width: 18,),
            Icon(Icons.share),
              SizedBox(width: 18,),
          ],),
          Icon(Icons.save_alt)
        ],),
      )
    ],);
  }
}
