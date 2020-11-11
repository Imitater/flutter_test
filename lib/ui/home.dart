import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_test/widget/Widget_Home_Refresh.dart';

void main() {
  //顶部状态栏透明
  runApp(new MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: Container(
            child: MyBody(),
          ),
        ));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Widget_Home_Refresh();
  }
}
