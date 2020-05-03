import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text("iTraveller"),
          centerTitle: true
        ),
        body:Center(
          child: Image(
            image: AssetImage("images/traveller.jpg")
          ),
        )
      )
    ));
  }
}

