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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(
                  color: Colors.teal[50],
                )
              ),
              Card(
                color: Colors.white,
                //Use margin to add space from other widgets (space outside Container)
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                //Use padding to add space inside of the container and content
                //padding: EdgeInsets.all(10.0),
                //Adding a container bought the entire content in the center of the screen as Container widget
                // with no child occupies the maximum space.
                child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text("+91 810 990 9271",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    ),
                  )
                ), 
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: const Text("krishnatandon.1208@gmail.com",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: "Source Sans Pro",
                      fontSize: 20.0
                    ),
                  ),
                )
              ),
            ],
          )
        ),
      )
    );
  }
}
