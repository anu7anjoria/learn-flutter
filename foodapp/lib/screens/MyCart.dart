import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Icon(Icons.shopping_cart, size: 150.0, color: Colors.brown)
        )
    );
  }
}