import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.indigo[900],
    appBar: AppBar(
      title: Text("Dicee App"),
      backgroundColor: Colors.indigo[400],
    ),
    body: MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  String winningText = "you won";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                //We need to explicitly tell that the state of the following is going to change.
                //Hence, call the setState(() {}); method and inside this method, place the code that
                // will change.
                setState(() {
                  // if(leftDiceNumber == rightDiceNumber) {
                  //   winningText = "You Won";
                  // }
                });
              },
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  // if(leftDiceNumber == rightDiceNumber) {
                  //   winningText = "You Won";
                  // }
                });
              },
            ),
          ),
        ],
      )),
    );
  }
}
