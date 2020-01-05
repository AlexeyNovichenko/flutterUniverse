import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  final String username = "Krishna Tandon";
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   title: Text("My Card App"),
        // ),
        body: SafeArea( 
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                // backgroundColor: Colors.white,
                backgroundImage: AssetImage("images/KrishnaTandon.png"),
              ),
              Text(
                username,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                ),
              ),
              Text (
                "FLUTTER DEVELOPER ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Source Sans Pro",
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                color: Colors.white,
                //Use margin to add space from other widgets (space outside Container)
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                //Use padding to add space inside of the container and content
                padding: EdgeInsets.all(10.0),
                //Adding a container bought the entire content in the center of the screen as Container widget
                // with no child occupies the maximum space.
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "+91 810 990 9272",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      )
                    ),
                  ],
                ), 
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "krishnatandon.1208@gmail.com",
                      style: TextStyle(
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                )
              ),
            ],
          )
        ),
      )
    );
  }
}
