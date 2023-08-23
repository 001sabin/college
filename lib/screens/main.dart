// ignore_for_file: prefer_const_constructors

import 'package:college_app/screens/calender.dart';
import 'package:college_app/screens/home.dart';
import 'package:college_app/screens/notice.dart';
import 'package:college_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    NoticePage(),
    Calender(),
    ProfilePage(),
  ];

  List<String> getTitle = [
    "HOME",
    "Search",
    "Discover",
    "Profile",
  ];

  getbody() {
    return pages[selectedIndex];
  }

  getAppbar() {
    return getTitle[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppbar(),
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: getbody(),
      bottomNavigationBar: WaterDropNavBar(
        barItems: [
           BarItem(
            filledIcon: Icons.home_filled,
            outlinedIcon: Icons.home,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
        ],
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
