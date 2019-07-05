import 'package:flutter/material.dart';
import 'package:flutter_course/pages/side_navigator.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  void _showDialog(BuildContext context,
      {contentForStupidGuy =
          "This is just the test function. It's time to tap some where to close it. OK?"}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hi stupid user'),
          content: Text(contentForStupidGuy),
          actions: <Widget>[
            FlatButton(
              child: Text('yeah..'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('no'),
              onPressed: () {
                _showDialog(context,
                    contentForStupidGuy:
                        'Please stop your shit, THE Dialog will never give up and the only shit that is hurt is your finger because of tapping so many times.\nSee, the screen is becoming darker!');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideNavigator(),
      ),
      appBar: AppBar(
        title: Text('Products'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              _showDialog(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            tooltip: 'Message',
            onPressed: () {
              _showDialog(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.more),
            tooltip: 'More',
            onPressed: () {
              _showDialog(context);
            },
          ),
        ],
      ),
      body: ProductManager(),
    );
  }
}
