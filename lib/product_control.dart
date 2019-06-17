import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function updateProducts;

  ProductControl(this.updateProducts);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color.fromARGB(100, 100, 100, 100),
      onPressed: () {
        updateProducts({'title': 'Chocolate', 'image': 'assets/food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
