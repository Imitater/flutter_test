import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_test/bean/FriendBean.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class Widget_Find_Focus extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Widget_Find_Focus> {
  final List<FriendBean> getFriendList = [
    FriendBean(
        'https://hbimg.huabanimg.com/c714fae53112c246c7b4f126462130d4119af04b1bc8a-2w92F5_fw658/format/webp',
        'Sevebteen',
        '唯爱与美食不可辜负'),
    FriendBean(
        'https://hbimg.huabanimg.com/f2b48ebe46f6e622fb53b34d29fc6e94c8dedb4824297-OP7aJU_fw658/format/webp',
        '西米Fiona',
        '专注烘培、美食'),
    FriendBean(
        'https://hbimg.huabanimg.com/36542ad2bcfcab377e9fa0e2c5bf9fb1fc84950d925e-zP5HbN_fw658/format/webp',
        '芝麻开门',
        '烘培爱好者'),
    FriendBean(
        'https://hbimg.huabanimg.com/c714fae53112c246c7b4f126462130d4119af04b1bc8a-2w92F5_fw658/format/webp',
        'Sevebteen',
        '唯爱与美食不可辜负'),
    FriendBean(
        'https://hbimg.huabanimg.com/f2b48ebe46f6e622fb53b34d29fc6e94c8dedb4824297-OP7aJU_fw658/format/webp',
        '西米Fiona',
        '专注烘培、美食'),
    FriendBean(
        'https://hbimg.huabanimg.com/36542ad2bcfcab377e9fa0e2c5bf9fb1fc84950d925e-zP5HbN_fw658/format/webp',
        '芝麻开门',
        '烘培爱好者'),
    FriendBean(
        'https://hbimg.huabanimg.com/c714fae53112c246c7b4f126462130d4119af04b1bc8a-2w92F5_fw658/format/webp',
        'Sevebteen',
        '唯爱与美食不可辜负'),
    FriendBean(
        'https://hbimg.huabanimg.com/f2b48ebe46f6e622fb53b34d29fc6e94c8dedb4824297-OP7aJU_fw658/format/webp',
        '西米Fiona',
        '专注烘培、美食'),
    FriendBean(
        'https://hbimg.huabanimg.com/36542ad2bcfcab377e9fa0e2c5bf9fb1fc84950d925e-zP5HbN_fw658/format/webp',
        '芝麻开门',
        '烘培爱好者'),
    FriendBean(
        'https://hbimg.huabanimg.com/c714fae53112c246c7b4f126462130d4119af04b1bc8a-2w92F5_fw658/format/webp',
        'Sevebteen',
        '唯爱与美食不可辜负'),
  ];

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: MaterialHeader(),
      footer: BallPulseFooter(),
      child: CustomScrollView(
        shrinkWrap: true,
        // 内容
        slivers: <Widget>[
          new SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  Container(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '还没关注任何人，去关注一些新朋友吧!',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('全部',
                                        style: TextStyle(color: Colors.grey)),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ]),
                        ),

                        ///list
                        Container(
                            height: 190,
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Expanded(
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 5, 0),
                                          child: Align(
                                            widthFactor: 7,
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              Icons.close,
                                              color: Colors.grey,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        new CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              getFriendList[index].gUrl),
                                          radius: 30.0,
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          height: 24,
                                          child: Text(
                                            getFriendList[index].gName,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Text(
                                            getFriendList[index].gDesc,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                        ),
                                        ButtonTheme(
                                          height: 30,
                                          minWidth: 100,
                                          buttonColor: Colors.orange,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: RaisedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  ),
                                                  Text(
                                                    '关注',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: getFriendList.length,
                            )),

                        //推荐
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: Text(
                            '为你推荐',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((content, index) {
              return Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    new CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://hbimg.huabanimg.com/1f1745e56fb485bfa7c13075980758abc560d7c411e2f-npWToS_fw658/format/webp'),
                                      radius: 24.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'KJennyk',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 2, 0, 0),
                                            child: Text(
                                              '2019-06-19 发布食谱',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 50,
                                  buttonColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: RaisedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                          Text(
                                            '关注',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                            //title
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: Text('【炼乳磨牙硬饼干】吹爆接渣盘',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                            //内容
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                              child:
                                  Text('经常处于明明不饿但想吃点什么的状态~我把这种状态概括为：想磨牙了。...',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      )),
                            ),
                            Image.network(
                                'https://hbimg.huabanimg.com/89c1f9a2ac3d68d2684cd830e77fd6633c16e7bc3d4151-YuCfOM_fw658/format/webp'),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'images/look.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: Text(
                                          '35',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 0, 0, 0),
                                        child: Image.asset(
                                          'images/heart.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: Text(
                                          '40',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 0, 0, 0),
                                        child: Image.asset(
                                          'images/collection.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 0, 0),
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                                    child: Image.asset(
                                      'images/share.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )));
            }, childCount: 25),
          )
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
