import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
 
  runApp(new MaterialApp(home: Find()));
}

class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'images/close.png',
        )
      ],
    );
  }
}
