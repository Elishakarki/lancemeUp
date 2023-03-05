import 'package:flutter/material.dart';
// As the Ui for Chat is not desccribed so only  appbar is shown not to crash the app 
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatSection"),
      ),
    );
  }
}
