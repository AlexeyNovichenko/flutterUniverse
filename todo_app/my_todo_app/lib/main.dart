import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_MyAppState());
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //backgroundColor: Color.fromRGBO(35, 47, 52, 1),
          appBar: AppBar(
            title: Text("Todo List App"),
            backgroundColor: Color.fromRGBO(52, 72, 85, 1),
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: //Creating a RaisedButton Widget
                    RaisedButton(
                      onPressed: () {}, 
                      child: Text("Add Item"),
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/fruit.jpg"),
                      Text("Fruits")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
