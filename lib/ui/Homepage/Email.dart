import 'package:flutter/material.dart';




class EmailNotification {
  final String sender;
  final String subject;
  final String body;

  EmailNotification({required this.sender, required this.subject, required this.body});
}

class FakeEmailNotificationUI extends StatefulWidget {
  @override
  _FakeEmailNotificationUIState createState() => _FakeEmailNotificationUIState();
}

class _FakeEmailNotificationUIState extends State<FakeEmailNotificationUI> {
  List<EmailNotification> _notifications = [
    EmailNotification(
      sender: 'John Doe',
      subject: 'Important message',
      body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    ),
    EmailNotification(
      sender: 'Jane Smith',
      subject: 'Invitation to a party',
      body: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    ),
    EmailNotification(
      sender: 'Bob Johnson',
      subject: 'Project update',
      body: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
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
        notification.sender.toLowerCase().contains(query.toLowerCase()) ||
        notification.subject.toLowerCase().contains(query.toLowerCase()) ||
        notification.body.toLowerCase().contains(query.toLowerCase())
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Notifications'),
      ),
      body: Column(
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
                    child: Text(notification.sender.substring(0, 1)),
                  ),
                  title: Text(notification.sender),
                  subtitle: Text(notification.subject),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => print('Notification tapped'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
