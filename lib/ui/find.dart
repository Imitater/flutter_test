import 'package:flutter/material.dart';
import 'package:sleep_test/widget/Widget_Find_Tabbar.dart';

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
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Image.asset('images/message.png', width: 25, height: 25),
              )
            ),
            Widget_Find_Tabbar()
          ],
        ));
  }
}
