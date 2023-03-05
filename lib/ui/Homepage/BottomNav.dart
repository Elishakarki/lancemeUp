import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random/ui/Homepage/Email.dart';
import 'package:random/ui/Homepage/HomePage.dart';
import 'package:random/ui/Homepage/notifications.dart';
import 'package:random/ui/Homepage/profile.dart';
import 'package:random/ui/Homepage/search.dart';
import 'package:random/ui/TabBar/chatView.dart';
import 'package:random/ui/TabBar/driveview.dart';
import 'package:random/ui/TabBar/projectView.dart';
import 'package:random/ui/TabBar/trackview.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  final Screens = [
    HomePage(),
    SearchPage(),
    EmailPage(),
    NotificationsPage(),
    ProfilePage(),
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screens[currentIndex],
                ),
              );
            });
          },
          iconSize: 27,
          elevation: 3,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Screens[currentIndex],
    );
  }
}
