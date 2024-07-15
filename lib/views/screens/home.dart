import 'package:flutter/material.dart';
import 'package:ui_01_instagram_clone/views/hero_section.dart';
import 'package:ui_01_instagram_clone/views/reusable_profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      body: SingleChildScrollView(child:
      Column(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
              Image(height: 50,width: 130,
                  image: AssetImage('assets/images/instaText.PNG')),
              SizedBox(width: 140,),
              Row(children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 15,),
                Icon(Icons.messenger_outline)
              ],)
            ],),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ReusableProfile(name: "Your Story",
              image: "assets/images/0.jpg"),
            ReusableProfile(name: "AI Girl",
                image: "assets/images/1.jpg"),
            ReusableProfile(name: "AI Woman",
                image: "assets/images/2.jpg"),
            ReusableProfile(name: "AI Boy",
                image: "assets/images/3.jpg"),
            ReusableProfile(name: "AI Profile Man",
                image: "assets/images/4.jpg"),
            ReusableProfile(name: "AI Man Profile",
                image: "assets/images/5.jpg"),
            ReusableProfile(name: "AI Sigma Man",
                image: "assets/images/6.jpg"),

          ],),
        ),
        HeroSection(
           image: "assets/images/3.jpg",
           name: "aimodel_01",
           iconData1: Icons.music_note,
           subTitle: "aimodel. Original post",
           iconData2: Icons.more_vert),
        HeroSection(
            image: "assets/images/1.jpg",
            name: "aimodel_02",
            iconData1: Icons.post_add,
            subTitle: "aimodel_02. Original post",
            iconData2: Icons.more_vert),
        HeroSection(
            image: "assets/images/2.jpg",
            name: "aimodel_03",
            iconData1: Icons.music_note,
            subTitle: "aimodel_03. Original post",
            iconData2: Icons.more_vert),
        HeroSection(
            image: "assets/images/0.jpg",
            name: "i_am_asif_nafees",
            iconData1: Icons.music_note,
            subTitle: "i_am_asif_nafees. Original post",
            iconData2: Icons.more_vert),
        HeroSection(
            image: "assets/images/6.jpg",
            name: "aimodel_06",
            iconData1: Icons.music_note,
            subTitle: "aimodel_06. Original post",
            iconData2: Icons.more_vert),
      ],),
      ),
    );
  }
}
