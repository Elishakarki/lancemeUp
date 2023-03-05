import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:random/ui/signInScreen.dart';

class NextSlider extends StatelessWidget {
  final String title = "What is Lorem ipsum ?";
  final String description =
      "Lorem ipsum is simply dummy text of the printing and typesetting industry";
  Color color = Colors.white;
  Color buttoncolor = Colors.green;
  NextSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
        IntroductionSliderItem(
          logo: Image.asset(
            "assets/img.png",
            height: 250,
            width: 250,
          ),
          title: Column(children: [
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
          subtitle: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(description),
            ],
          ),
          backgroundColor: color,
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            "assets/img.png",
            height: 250,
            width: 250,
          ),
          title: Column(children: [
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
          subtitle: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(description),
            ],
          ),
          backgroundColor: color,
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            "assets/img.png",
            height: 250,
            width: 250,
          ),
          title: Column(children: [
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
          subtitle: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(description),
            ],
          ),
          backgroundColor: color,
        ),
      ],
      done: Done(
        child: Icon(
          Icons.done,
          color: buttoncolor,
        ),
        home: SignInScreen(),
      ),

      next: 
       
       Next(child: Icon(Icons.arrow_forward,color: Colors.white,)),
      back: Back(
          child: Icon(
        Icons.arrow_back,
        color: buttoncolor,
      )),
      dotIndicator: DotIndicator(selectedColor: buttoncolor),
    );
  }
}

