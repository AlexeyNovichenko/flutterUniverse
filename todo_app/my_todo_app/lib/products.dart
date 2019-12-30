import "package:flutter/material.dart";

class Products extends StatelessWidget {

  final List<String> product;

  //Products(this.product);
  Products(this.product) {
    print("[Product Widget Constructor]");
  }

  @override
  Widget build(BuildContext context) {
    print("[Product Widget] build()");

    return Column(
      children: product //This product refers to the variable, product, of class Products
      .map((element) => Card(
          child: Column(
            children: <Widget>[
              Image.asset("images/fruit.jpg"),
              Text(element),
            ],
          ),
        ),
      ).toList(),
    );
  }
}