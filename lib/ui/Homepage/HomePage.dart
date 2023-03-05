import 'package:flutter/material.dart';
import 'package:random/ui/Homepage/BottomNav.dart';
import 'package:random/ui/Homepage/Email.dart';
import 'package:random/ui/TabBar/chatView.dart';
import 'package:random/ui/TabBar/driveview.dart';
import 'package:random/ui/TabBar/projectView.dart';
import 'package:random/ui/TabBar/trackview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4,);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Row(
          children: [
            Text(
              'Lancemeup',
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
        ],
       bottom:TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: Colors.green,
        indicatorColor: Colors.green,
          controller: _tabController, 
          tabs:  [
              Tab(
              icon: Icon(Icons.work),
              text: 'Project Tools',
              
            ),
            Tab(
              icon: Icon(Icons.messenger_outline_rounded),
              text: 'Chat ',
            ),
            Tab(
              icon: Icon(Icons.folder),
              text: 'Drive',
            ),
            Tab(
              icon: Icon(Icons.alarm),
              text: 'Track',
            ),
          ],),
        elevation: 0,
        leading: Transform.translate(
          offset: Offset(0, 5), // adjust the vertical position
          child: Transform.scale(
            scale: 0.8, // adjust the size
            child: Image.asset('assets/lego.png'),
          ),
        ),
      ),
      body: TabBarView(children: [
         ProjectTaskView(),
        ChatView(),
        Driveview(),
       TrackView(),

      ]),
    );
  }
}

