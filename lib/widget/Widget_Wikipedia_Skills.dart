import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:sleep_test/ui/info.dart';

class Widget_Wikipedia_Skills extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Widget_Wikipedia_Skills> {
  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: MaterialHeader(),
      footer: BallPulseFooter(),
      child: CustomScrollView(
        shrinkWrap: true,
        // 内容
        slivers: <Widget>[
          new SliverList(
            delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              //创建列表项
              return new InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xffe5e5e5)))),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Text(
                              '手揉面团的手法技巧',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, left: 16),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '601万人阅读',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Text(
                                  '·305万人收藏',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Image.network(
                          'https://hbimg.huabanimg.com/961a546fe9e64f1d6cc1d8717d0bb063b0011c2c1ddfc-sikXJh_fw658/format/webp',
                          width: 180,
                          height: 110,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Info();
                  }));
                },
              );
            }, childCount: 30 //30个列表项
                ),
          ),
        ],
      ),
      onRefresh: () async {
        //下拉请求新数据
      },
      onLoad: () async {
        //下拉增加新数据
        print('上拉加载开始');
        await Future.delayed(Duration(seconds: 2), () {
          setState(() {
            print('上拉加载结束');
          });
        });
      },
    );
  }
}
