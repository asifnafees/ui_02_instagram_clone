import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableProfile extends StatelessWidget {
  final String name;
  final String image;
  const ReusableProfile({super.key,
  required this.name,
  required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Outer Container for gradient border
            Container(
              width: 95, // CircleAvatar size + border width
              height: 95,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.red,Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            // CircleAvatar with transparent background to show gradient border
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Color of the gap between avatar and border
              ),
            ),
            // Actual CircleAvatar
            CircleAvatar(
              radius: 40, // Adjust the radius considering the border width
              backgroundImage: AssetImage(image),
            ),
          ],
        ),
        Text(name.toLowerCase())
      ],),
    );
  }
}
