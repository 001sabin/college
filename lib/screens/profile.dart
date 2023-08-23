// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
                CupertinoSearchTextField(),
            SizedBox(height: 8,),
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                
                radius: 32,
                backgroundImage: AssetImage("assets/image/logo.png"),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
            
          ListTile(
            tileColor: Colors.amber,
            leading: Icon(Icons.holiday_village),
            title: Text("Äccount"),
            subtitle: Text("Hello Wolrld"),
          
          ),
          SizedBox(height: 10,),
          ListTile(
            tileColor: Colors.green,
            leading: Icon(Icons.holiday_village),
            title: Text("Äccount"),
            subtitle: Text("Hello Wolrld"),
          
          ),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}