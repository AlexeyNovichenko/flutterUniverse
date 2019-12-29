import "package:flutter/material.dart";
import "./products.dart";

class ProductManager extends StatefulWidget {

  final String startingProducts;
  
  ProductManager(this.startingProducts);
  @override
  State<StatefulWidget> createState() {
    return (_ProjectManagerState());
  }
}

class _ProjectManagerState extends State<ProductManager> {
  //Adding a property, "products" which is a List of generic type String
  List<String> _product = [];
 
  @override
  void initState() {
    _product.add(widget.startingProducts); 
    //widget.xyz where "widget" helps to connect to the properties of the class that State class links to.
   // here State<ProductManager>, State class links with ProductManager
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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

          //Calling the Products class i.e. products.dart
          Products(_product),
        ]
    );
  }
}