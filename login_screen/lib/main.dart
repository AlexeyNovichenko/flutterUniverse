import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //int defaultScreenSize = 1023;
    //Detecting screen width and also providing a default value.
    //bool isScreenWide = MediaQuery.of(context).size.width > defaultScreenSize;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column( //Flex
            //direction: Axis.horizontal,
            children: <Widget>[
            //Image
            Image.asset("images/login_image.png", width: double.infinity),
            SizedBox(
              width: 20.0,
              height: 20.0
            ),
            Column(
              children: <Widget>[
                Text("LOGIN",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Source Sans Pro",
                    fontWeight: FontWeight.bold
                  )
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue[900]
                    ),
                    title: Text("Krishna Tandon",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 24.0,
                      )
                    ),
                  ),
                ),
                // Card(
                    
                // ),
                TextField(
                    decoration: InputDecoration(
                    filled: false,
                    labelText: 'Username',
                  ),
                ),
                RaisedButton(
                  hoverColor: Colors.blue[300],
                  onPressed: () {
                    print("I was clicked");
                  },
                ),
              ],
            )
            //Card1
            //Card2
            //Submit Button
            ],
          ),
        ),
      )
    );
  }
}