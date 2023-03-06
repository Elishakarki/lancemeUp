import 'dart:ui';

import 'package:flutter/material.dart';

class EmailNotification {
  final String senderName;
  final String senderEmail;
  final String ?subject;
  final String body;
  final String date;
  bool isStarred;

  EmailNotification({
    required this.senderName,
    required this.senderEmail,
    this.subject,
    required this.body,
    required this.date,
    this.isStarred = false,
  });
}

class FakeEmailNotificationUI extends StatefulWidget {
  @override
  _FakeEmailNotificationUIState createState() => _FakeEmailNotificationUIState();
}

class _FakeEmailNotificationUIState extends State<FakeEmailNotificationUI> {
  List<EmailNotification> _notifications = [
    EmailNotification(
      senderName: 'John Doe',
      senderEmail: 'john.doe@example.com',
      subject: 'Important message',
      body: 'Lorem ipsum dolor sit amet..',
      date: 'Mar 5',
    ),
    EmailNotification(
      senderName: 'Jane Smith',
      senderEmail: 'jane.smith@example.com',
      subject: 'Invitation to a party',
      body: 'Sed do eiusmod tempor incididunt ut labore..',
      date: 'Mar 3',
    ),
    EmailNotification(
      senderName: 'Bob Johnson',
      senderEmail: 'bob.johnson@example.com',
      subject: 'Project update',
      body: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco..',
      date: 'Mar 2',
      isStarred: true,
    ),
  ];

  List<EmailNotification> _filteredNotifications = [];

  @override
  void initState() {
    super.initState();
    _filteredNotifications = _notifications;
  }

  void _filterNotifications(String query) {
    setState(() {
      _filteredNotifications = _notifications.where((notification) =>
        notification.senderName.toLowerCase().contains(query.toLowerCase()) ||
        notification.senderEmail.toLowerCase().contains(query.toLowerCase()) ||
        notification.subject!.toLowerCase().contains(query.toLowerCase()) ||
        notification.body.toLowerCase().contains(query.toLowerCase())
      ).toList();
    });
  }

  void _toggleStar(EmailNotification notification) {
    setState(() {
      notification.isStarred = !notification.isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(child: Text("All inbox",style:TextStyle(color: Colors.black)))
         
          ]
        
          ),
          
      
      ),

      floatingActionButton: FloatingActionButton(
  onPressed: () {},
  tooltip: 'Compose',
  child: Icon(Icons.edit),
),
      body:  Column(
          mainAxisSize: MainAxisSize.min ,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search for emails',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: _filterNotifications,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredNotifications.length,
                itemBuilder: (context, index) {
                  final notification = _filteredNotifications[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(notification.senderName.substring(0, 1)),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.senderName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          notification.subject.toString(),
                         style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    subtitle: Expanded(
                    
                      child: Text(
                        
                        notification.body,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    trailing: SingleChildScrollView(
                      child: Column(
                        
                        children: [
                          Text(
                            notification.date,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                          IconButton(
                            icon: notification.isStarred ? Icon(Icons.star) : Icon(Icons.star_border),
                            onPressed: () => _toggleStar(notification),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      
    );
  }
}
