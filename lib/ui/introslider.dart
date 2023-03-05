import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:random/ui/Homepage/BottomNav.dart';

import 'package:random/ui/signInScreen.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({super.key});

  @override
  State<IntroScreenDefault> createState() => _IntroScreenDefaultState();
}

class _IntroScreenDefaultState extends State<IntroScreenDefault> {
  static const String title = "What is Lorem ipsum ?";
  static const String description =
      "Lorem ipsum is simply dummy text of the printing and typesetting industry";
  List<ContentConfig> listContentConfig = [];
  static const Color color = Colors.green;
  static const String image = "assets/img.png";

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
          title: title,
          description: description,
          pathImage: image,
          backgroundColor: color),
    );
    listContentConfig.add(
      const ContentConfig(
          title: title,
          description: description,
          pathImage: image,
          backgroundColor: color),
    );
    listContentConfig.add(
      const ContentConfig(
          title: title,
          description: description,
          pathImage: image,
          backgroundColor: color),
    );

    listContentConfig.add(
      const ContentConfig(
          title: title,
          description: description,
          pathImage: image,
          backgroundColor: color),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return SignInScreen();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
