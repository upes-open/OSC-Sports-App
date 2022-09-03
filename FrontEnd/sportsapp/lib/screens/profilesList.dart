import 'package:flutter/material.dart';
import 'package:sportsapp/main.dart';
import 'package:sportsapp/screens/HomePage.dart';

class Profilelist extends StatefulWidget {
  String name;
  String imageURL;
  String sport;
  String country;
  Profilelist({
    required this.name,
    required this.imageURL,
    required this.sport,
    required this.country,
  });
  @override
  _ProfilelistState createState() => _ProfilelistState();
}

class _ProfilelistState extends State<Profilelist> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Homepg();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.imageURL),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(fontSize: 16),
                            ),
                            Column(
                              children: [
                                Align(alignment: Alignment.center),
                                Row(children: [
                                  Align(alignment: Alignment.center),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    widget.sport,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    widget.country,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.chat_outlined),
                                      color: Colors.blue,
                                      onPressed: () {}),
                                ])
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
