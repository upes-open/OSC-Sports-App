/*Made by Charu Gupta*/
import 'package:flutter/material.dart';
import 'package:sportsapp/secondpage.dart';

// function to start app building
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Color.fromRGBO(1, 9, 12, 255)),
      title: 'Page Navigation',
      home: FirstPage(),
    ));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SportsApp'),
          centerTitle: true,
          leading: Container(child: Image.asset('assets/images/open.png')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Color.fromRGBO(1, 9, 12, 255),
              child: Image.asset(
                'assets/images/sport.jpg',
                width: 600,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              height: 40,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: 200,
              child: ElevatedButton(
                child: const Text('Proceed'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => secondpage()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
            ),
          ],
        )));
  }
}
