import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        appBar: AppBar(
          title: Text("My Card App"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              //Add Image
              //Add Username
              //Add email
              //Add submit button
            ),
          ),
        ),

      )
    );
  }
}
