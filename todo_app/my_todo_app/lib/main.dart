import "package:flutter/material.dart";

import "./product_manager.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List App"),
        ),
        body: SafeArea(
          //Creating a file for the following Container and this container is 
          //now available in ProductManager class i.e. product_manager.dart
          child: ProductManager("Food item")
          //child: ProductManager()
          //This content is now moved to Products.dart    
        ),
      ),
    );
  }
}
