import 'package:doctorsapp/Screens/AppointmentScreen.dart';
import 'package:doctorsapp/Screens/Schedule.dart';
import 'package:doctorsapp/Screens/home.dart';
import 'package:doctorsapp/Screens/messages.dart';
import 'package:doctorsapp/Screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarRoot extends StatefulWidget {
  const NavBarRoot({Key? key}) : super(key: key);

  @override
  _NavBarRootState createState() => _NavBarRootState();
}

class _NavBarRootState extends State<NavBarRoot> {
  int _selectedIndex = 0;
  final Screens = [
      Home(),
     Container(),
    Schedule(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2),
                label: "Messages"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.schedule),
                label: "Schedule"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Settings"
            ),
          ],
        ),
      ),
    );
  }
}

