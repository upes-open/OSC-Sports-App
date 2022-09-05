import 'package:flutter/material.dart';
import 'package:sportsapp/screens/ChatPage.dart';
import 'package:sportsapp/models/chatUsersModel.dart';
import 'package:sportsapp/screens/chatDetails.dart';

class Conversation extends StatefulWidget {
  String name;
  String messageText;
  String imageURL;
  String time;
  bool isMessageRead;
  Conversation({
    required this.name,
    required this.messageText,
    required this.imageURL,
    required this.time,
    required this.isMessageRead,
  });
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return chatDetails();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.messageText,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                  fontWeight: widget.isMessageRead
                                      ? FontWeight.bold
                                      : FontWeight.normal))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: widget.isMessageRead
                      ? FontWeight.bold
                      : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
