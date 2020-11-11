import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_test/widget/Widget_My_Tabbar.dart';

import 'message.dart';

void main() {
  runApp(new MaterialApp(home: My()));
}

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: MyBody(),
          ),
        ));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Padding(
          padding: new EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                child: Image.asset('images/message.png', width: 25, height: 25),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Message();
                  }));
                },
              ),
              Image.asset('images/setting.png', width: 20, height: 20)
            ],
          ),
        ),
        //头像 个人信息
        Padding(
          padding: new EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  new CircleAvatar(
                    backgroundImage: AssetImage('images/head.jpg'),
                    radius: 32.0,
                  ),
                  Padding(
                    padding: new EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            new Text(
                              "依然七月",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset(
                              'images/vip-line.png',
                              width: 24,
                              height: 24,
                            )
                          ],
                        ),
                        Padding(
                          padding: new EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: new Text(
                            '每天分享一个小技巧',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 24.0,
              ),
            ],
          ),
        ),
        //grid
        Padding(
          padding: new EdgeInsets.fromLTRB(48, 32, 48, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('6',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Text('关注', style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('120',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Text('粉丝', style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('10',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Text('被收藏',
                      style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('56',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Text('最近浏览',
                      style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              )
            ],
          ),
        ),

        //vip
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Container(
                  child: Image.asset('images/vip.jpg'),
                ),
              ),
            ),
            Padding(
                padding: new EdgeInsets.fromLTRB(48, 5, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/vip-line.png',
                      width: 24,
                      height: 24,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '立即开通',
                          style: TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.orange,
                          size: 24.0,
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2), //阴影位置,从什么位置开始
                blurRadius: 1, //阴影范围
                spreadRadius: 1, //阴影浓度
                color: Colors.grey[100], //阴影颜色
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/heart.png',
                          width: 24,
                          height: 24,
                        ),
                        Text('我的点赞',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/book.png',
                          width: 24,
                          height: 24,
                        ),
                        Text('我的课程',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/collection.png',
                          width: 24,
                          height: 24,
                        ),
                        Text('我的收藏',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/draft.png',
                          width: 24,
                          height: 24,
                        ),
                        Text('草稿箱',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ],
                    ),
                  ],
                ),
              ),
              //tab
              Widget_My_Tabbar()
            ],
          ),
        ),
      ],
    );
  }
}
