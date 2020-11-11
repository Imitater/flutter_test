import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_test/widget/Widget_Play_Video.dart';

void main() {
  runApp(new MaterialApp(home: Play()));
}

class Play extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: Center(
            child: MyBody(),
          ),
        ));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoScreen(
      url: 'https://vfx.mtime.cn/Video/2019/03/19/mp4/190319222227698228.mp4',
    );
  }
}
