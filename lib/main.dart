// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:college_app/screens/main.dart';
import 'package:college_app/screens/login.dart';
import 'package:college_app/screens/welcome.dart';
// import 'package:college_app/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(collegeApp());
}

class collegeApp extends StatelessWidget {
  const collegeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: AnimatedSplashScreen(
        //     splash: Image.asset(
        //       "assets/image/logo.png",
        //     ),
        //     nextScreen: WelcomeScreen(),
        //     splashTransition:  SplashTransition.scaleTransition ,
        //     animationDuration: Duration(seconds: 1),
        //     backgroundColor: const Color.fromRGBO(255, 255, 255, 1) ,
        //     duration: 1500,
        //     ),
        // home: WelcomeScreen(),
        // home: LoginPage(),
        home: MainPage(),
            );
  }
}
  