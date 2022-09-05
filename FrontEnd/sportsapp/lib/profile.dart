import 'package:flutter/material.dart';
import 'package:sportsapp/landing.dart';
import 'package:sportsapp/screens/ChatPage.dart';
import 'package:sportsapp/screens/HomePage.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatPage()));
                } else if (index == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepg()));
                } else if (index == 2) {}
              }),
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: const Text("Profile Page"),
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
          body: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                child: Image.network(
                  "assets/images/Ashutosh.jpg",
                ),
              ),
              const ListTile(
                title: Text("Name", style: TextStyle(fontSize: 20)),
                subtitle:
                    Text("Ashutosh Kapoor", style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                title: Text("Sports", style: TextStyle(fontSize: 20)),
                subtitle: Text("Football.", style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                title: Text("Country", style: TextStyle(fontSize: 20)),
                subtitle: Text("India.", style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                title: Text("About Me", style: TextStyle(fontSize: 20)),
                subtitle: Text("I love to play this sport from my childhood.",
                    style: TextStyle(fontSize: 15)),
              )
            ],
          )),
    );
  }
}
