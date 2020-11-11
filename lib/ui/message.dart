import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: Message()));
}

class Message extends StatelessWidget {
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
        Container(
          height: 72,
          padding: EdgeInsets.only(top: 32),
          child: Stack(
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
              Container(
                height: 48,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '消息',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/letter.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '系统通知',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/jiangbie.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '热门通知',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/people.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '新粉丝',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/heart.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '新点赞',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/star.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '被收藏',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '20',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new ClipOval(
                        child: Container(
                          width: 48,
                          height: 48,
                          color: Colors.grey[200],
                        ),
                      ),
                      Image.asset(
                        'images/pinglun.png',
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '评论',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.red),
                    child: Text(
                      '10',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
