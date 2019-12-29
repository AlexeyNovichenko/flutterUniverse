import "package:flutter/material.dart";

import "./product_manager.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List App"),
          backgroundColor: Color.fromRGBO(52, 72, 85, 1),
        ),
        body: SafeArea(
          //Creating a file for the following Container and this container is 
          //now available in ProductManager class i.e. product_manager.dart
          child: ProductManager("Food item")
          //This content is now moved to Products.dart    
        ),
      ),
    );
  }
}
