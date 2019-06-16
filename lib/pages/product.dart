import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of Sweet'),
      ),
      body: Center(
        child: Text("Yeah, it's sweet literally!"),
      ),
    );
  }
}
