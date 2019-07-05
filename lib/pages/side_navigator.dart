import 'package:flutter/material.dart';
import 'package:flutter_course/pages/home.dart';
import 'package:flutter_course/pages/product_admin.dart';

class SideNavigator extends StatelessWidget {
  const SideNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false,
          title: Text('Menu'),
        ),
        ListTile(
          title: Text('Home Page'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return HomePage();
              }),
            );
          },
        ),
        ListTile(
          title: Text('Manage Products'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return ProductAdmin();
              }),
            );
          },
        ),
      ],
    );
  }
}
