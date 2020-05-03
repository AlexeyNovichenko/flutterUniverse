import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amber[100],
          appBar: AppBar(
            title: Text("I am Poor!!"),
            backgroundColor: Colors.blueGrey[900],
          ),
          body:Center(
            child: Image(
              image: AssetImage("images/poor.png")
            )
          )
        )
      )
    );
  }
}