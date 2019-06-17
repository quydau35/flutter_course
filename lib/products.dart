import 'package:flutter/material.dart';
import 'package:flutter_course/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    // print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                // color: Color.fromARGB(100, 100, 100, 100),
                child: Text('Details'),
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                            products[index]['title'],
                            products[index]['image'],
                          ),
                    ),
                  ).then((bool onvalue) {
                    if (onvalue) {
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print('[Products Widget] build()');
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: (products.length),
      );
    } else {
      // productCard = Center(
      //   child: Text('No products found, please add some'),
      // );
      productCard = Container();
    }

    return productCard;
  }
}
