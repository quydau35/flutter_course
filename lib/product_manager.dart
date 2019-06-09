import 'package:flutter/material.dart';
import 'package:flutter_course/product_control.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  // ProductManager({Key key}) : super(key: key);
  final String startingProduct;
  ProductManager({this.startingProduct = 'Sweets Tester'});
  @override
  _ProductManagerState createState() {
    print('[ProDuctManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // setState(() { // No need to add setState() because the build() widget hasn't run yet the 1st time
    //  null;
    // });
    print('[ProDuctManager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _updateProducts(String product) {
    setState(() {
      _products.add('Add advanced Food Tester');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProDuctManager State] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_updateProducts),
        ),
        Products(_products)
      ],
    );
  }
}
