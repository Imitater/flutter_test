import 'package:flutter/material.dart';
 
void main() {
  runApp(new MaterialApp(home: Index()));
}

class Index extends StatelessWidget {
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
    return new Text('123132213');
  }
}
