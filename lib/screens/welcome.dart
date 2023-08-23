// ignore_for_file: prefer_const_constructors


import 'package:animated_introduction/animated_introduction.dart';
import 'package:college_app/screens/login.dart';
import 'package:flutter/material.dart';

final List<SingleIntroScreen> pages = [
  const SingleIntroScreen(
    sideDotsBgColor: Colors.green,
    mainCircleBgColor: Colors.green,
    title: 'Top up & Withdraw',
    description:
        'Swift online top-ups, instant withdrawals. Effortlessly manage your money with seamless digital transactions.',
    imageAsset: 'assets/image/logo.png',
  ),
  const SingleIntroScreen(
    sideDotsBgColor: Colors.green,
    mainCircleBgColor: Colors.green,
    title: 'Easy Payment',
    description:
        'Effortlessly pay, transfer, and shop with our user-friendly e-wallet. Simple, secure, and fast digital payments for modern living.',
    imageAsset: 'assets/image/logo.png',
  ),
  const SingleIntroScreen(
    sideDotsBgColor: Colors.green,
    mainCircleBgColor: Colors.green,
    title: 'Shopping Online',
    description:
        "Shop confidently online. Enjoy secure transactions and a wide range of products with our e-wallet's shopping feature.",
    imageAsset: 'assets/image/logo.png',
  ),
];

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedIntroduction(
        footerBgColor: Colors.green,
        slides: pages,
        onDone: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
        });
  }
}