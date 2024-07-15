import 'dart:async';
import 'package:ui_01_instagram_clone/views/constants/gradient_Text.dart';
import 'package:flutter/material.dart';
import 'package:ui_01_instagram_clone/views/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.3,),
        Image( height: 100,width: 100,
            image: AssetImage('assets/images/instagram.png')),
        SizedBox(height: MediaQuery.of(context).size.height*.4,),
        Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('from',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GradientText(
            '∞', // Infinity icon
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.pink,
              ],
            ),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
            SizedBox(width: 5,),
            GradientText(
              'Meta', // Infinity icon
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.pink,
                ],
              ),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],)
        ],)
      ],),
    );
  }
}
