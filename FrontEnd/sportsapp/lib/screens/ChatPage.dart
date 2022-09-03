import 'package:flutter/material.dart';
import 'package:sportsapp/models/chatUsersModel.dart';
import 'package:sportsapp/screens/messagehome.dart';
import 'package:sportsapp/main.dart';
import 'package:sportsapp/landing.dart';
import 'package:sportsapp/widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatusers = [
    ChatUsers(
        name: "Ashutosh Kapoor",
        messageText: "Hii there",
        imageURL: "assets/images/Ashutosh.jpg",
        time: "yesterday"),
    ChatUsers(
        name: "Bhavika Jetwani",
        messageText: "A bit busy",
        imageURL: "assets/images/user.png",
        time: "now"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Message Center",
              style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
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
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  /*Text("Message Center",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),*/
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: Row(children: <Widget>[
                      Align(alignment: Alignment.centerLeft),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Add New",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ]),
                  )
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey.shade100)))),
            ),
            ListView.builder(
              itemCount: chatusers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Conversation(
                  name: chatusers[index].name,
                  messageText: chatusers[index].messageText,
                  imageURL: chatusers[index].imageURL,
                  time: chatusers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
