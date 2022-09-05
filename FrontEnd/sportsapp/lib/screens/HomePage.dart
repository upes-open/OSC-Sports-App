import 'package:flutter/material.dart';
import 'package:sportsapp/landing.dart';
import 'ChatPage.dart';
import 'package:sportsapp/profile.dart';
import 'package:sportsapp/screens/profilesList.dart';
import 'package:sportsapp/models/userprofilemodel.dart';

class Homepg extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homepg> {
  List<userProfile> userprofile = [
    userProfile(
        name: "Ashutosh Kapoor",
        imageURL: "assets/images/Ashutosh.jpg",
        sport: "Football",
        country: "India"),
    userProfile(
        name: "Vedant Saraf",
        imageURL: "assets/images/user.png",
        sport: "Basketball",
        country: "India"),
    userProfile(
        name: "Sarthak Tiwari",
        imageURL: "assets/images/user.png",
        sport: "Baseball",
        country: "USA"),
    userProfile(
        name: "Bhavika Jetwani",
        imageURL: "assets/images/user.png",
        sport: "Soccer",
        country: "USA"),
    userProfile(
        name: "Charu Gupta",
        imageURL: "assets/images/user.png",
        sport: "badminton",
        country: "Anonymous"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.normal,
          ),
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
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
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            }
          }),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "All Profiles",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
              child: Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Row(children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ])))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ListView.builder(
                itemCount: userprofile.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Profilelist(
                    name: userprofile[index].name,
                    imageURL: userprofile[index].imageURL,
                    sport: userprofile[index].sport,
                    country: userprofile[index].country,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
