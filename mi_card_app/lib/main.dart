import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          //verticalDirection: VerticalDirection.down,
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                width: 100.0,
                //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                //margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
                //padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Text("Container 1")),
            Container(
                width: 100.0, color: Colors.blue, child: Text("Container 2")),
            Container(
                width: 100.0, color: Colors.red, child: Text("Container 3")),
          ],
        ),
      ),
    ));
  }
}
