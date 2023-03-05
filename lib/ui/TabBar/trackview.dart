import 'package:flutter/material.dart';
//as for the Track of time the Ui is not specified so i have implemented onlyappbar for the app not to crash
class TrackView extends StatelessWidget {
  const TrackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the chatSection"),
      ),
    );

  }
}
