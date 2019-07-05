import 'package:flutter/material.dart';
import 'package:flutter_course/pages/side_navigator.dart';
import 'package:flutter_course/pages/product_create.dart';
import 'package:flutter_course/pages/product_list.dart';

class ProductAdmin extends StatelessWidget {
  const ProductAdmin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: SideNavigator(),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}
