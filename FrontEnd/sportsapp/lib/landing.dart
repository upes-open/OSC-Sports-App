import 'package:flutter/material.dart';

import 'package:sportsapp/screens/ChatPage.dart';
import 'Login.dart';
import 'package:sportsapp/main.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:sportsapp/Signup.dart';
import 'package:sportsapp/screens/HomePage.dart';

void main() => runApp(Landing());

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messaging',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (int index) {
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            } else if (index == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepg()));
            } else if (index == 2) {}
          }),
    );
  }
}
