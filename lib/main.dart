import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:random/ui/Homepage/BottomNav.dart';
import 'package:random/ui/Homepage/Homepage.dart';
import 'package:random/ui/TabBar/chatView.dart';
import 'package:random/ui/TabBar/driveview.dart';
import 'package:random/ui/TabBar/projectView.dart';
import 'package:random/ui/TabBar/trackview.dart';
import 'package:random/ui/introslider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:random/ui/nextslider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
          // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => HomePage(),
        '/project':(context) => ProjectView(),
        "/chat":(context) => ChatView(),
        "/drive":(context)=> Driveview(),
        "/track":(context) => TrackView()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch:Colors.green,
        primaryColor: Colors.black,
     
      textTheme:  TextTheme(
         bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
          headline1: TextStyle(color: Colors.black),
          headline2: TextStyle(color: Colors.black),
          headline3: TextStyle(color: Colors.black),
          headline4: TextStyle(color: Colors.black),
          headline5: TextStyle(color: Colors.black),
          headline6: TextStyle(color: Colors.black),
          subtitle1: TextStyle(color: Colors.black),
          subtitle2: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.black),
          caption: TextStyle(color: Colors.black),
          overline: TextStyle(color: Colors.black),
        ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color.fromRGBO(0, 0, 0, 0.87),
      unselectedItemColor: Color.fromRGBO(0, 0, 0, 0.60),
    ),
  ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    print('go!');
    FlutterNativeSplash.remove(); //Removing  the splashScreen after 2 Seconds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child:
         BottomNavigation()),
      // body: NextSlider(),
    );
  }
}
