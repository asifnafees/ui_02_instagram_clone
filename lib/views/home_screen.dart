import 'package:flutter/material.dart';
import 'package:ui_01_instagram_clone/views/screens/home.dart';
import 'package:ui_01_instagram_clone/views/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions =
  <Widget>[
    Home(),
    Image(image: AssetImage('assets/images/search.jpg')),
    Icon(Icons.add_box, size: 150),
    Icon(Icons.video_library, size: 150),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box,size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library,size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar( radius: 15,
              backgroundImage: AssetImage('assets/images/0.jpg'),),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed

      ),
    );
  }
}
