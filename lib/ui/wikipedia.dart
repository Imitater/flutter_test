import 'package:flutter/material.dart';
import 'package:sleep_test/widget/Widget_Wikipedia.Tab.dart';

void main() {
  //顶部状态栏透明
  runApp(new MaterialApp(home: Wikipedia()));
}

class Wikipedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        Container(
          margin: EdgeInsets.only(top: 32),
          padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                  size: 48.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                '烘培百科',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                child: Image.asset(
                  'images/video_share.png',
                  width: 32,
                  height: 32,
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        //tabbar
        Widget_Wikipedia_Tab()
      ],
    );
  }
}
