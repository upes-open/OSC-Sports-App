import 'package:flutter/material.dart';
import 'package:sportsapp/secondpage.dart';

// function to start app building
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
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
              child: Image.asset(
                'assets/images/first.jpg',
                width: 600,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: ElevatedButton(
                child: const Text('Proceed'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => secondpage()));
                },
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
          ],
        )));
  }
}
