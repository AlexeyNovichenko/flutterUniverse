import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_MyAppState());
  }
}

class _MyAppState extends State<MyApp> {
  //Adding a property, "products" which is a List of generic type String

  List<String> _product = ["Food item"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List App"),
          backgroundColor: Color.fromRGBO(52, 72, 85, 1),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _product.add("New food item");
                      print(_product);
                    });
                  },
                  child: Text("Add Product"),
                  splashColor: Color.fromRGBO(52, 72, 85, 1),
                ),
              ),
              Column(
                children: _product
                .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/fruit.jpg"),
                        Text(element),
                      ],
                    ),
                  ),
                ).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
