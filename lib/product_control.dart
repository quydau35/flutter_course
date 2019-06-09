import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function updateProducts;

  ProductControl(this.updateProducts); 

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              updateProducts('Sweets');
            },
            child: Text('Add Product'),
          );
  }
}