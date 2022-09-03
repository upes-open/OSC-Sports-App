import 'dart:ui';
import 'package:sportsapp/landing.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sportsapp/Signup.dart';
import 'package:sportsapp/main.dart';
import 'package:sportsapp/login.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome To The World of Sports !'),
          centerTitle: true,
          leading: Container(child: Image.asset('assets/images/open.png')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/second.jpg',
                width: 600,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: 200,
              height: 40,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                child: const Text('SignUp'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 200,
              height: 40,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                child: const Text('LogIn'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
              ),
            ),
          ],
        )));
  }
}
