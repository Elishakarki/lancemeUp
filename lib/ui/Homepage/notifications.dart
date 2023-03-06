import 'package:flutter/material.dart';

class MyNotificationsScreen extends StatefulWidget {
  @override
  _MyNotificationsScreenState createState() => _MyNotificationsScreenState();
}

class _MyNotificationsScreenState extends State<MyNotificationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Invites'),
            Tab(text: 'Mentions'),
            Tab(text: 'Workspace'),
            Tab(text: 'Emails'),
          ],
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.green,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildNotificationList(),
          _buildNotificationList(),
          _buildNotificationList(),
          _buildNotificationList(),
          _buildNotificationList(),
        ],
      ),
    );
  }

  Widget _buildNotificationList() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        _buildNotificationItem(
          avatarPath: "assets/harry.png",
          title: 'John Doe',
          subtitle: 'liked your post',
          time: '1h ago',
        ),
        _buildNotificationItem(
          avatarPath: "assets/lego.png",
          title: 'Jane Smith',
          subtitle: 'mentioned you in a comment',
          time: '2h ago',
        ),
        _buildNotificationItem(
          avatarPath: "assets/santa.png",
          title: 'Bob Johnson',
          subtitle: 'sent you an invite',
          time: '3h ago',
        ),
        _buildNotificationItem(
          avatarPath: "assets/obama.png",
          title: 'Alice Brown',
          subtitle: 'sent you a message',
          time: '4h ago',
        ),
      ],
    );
  }

  Widget _buildNotificationItem({
    required String avatarPath,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatarPath),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        time,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
