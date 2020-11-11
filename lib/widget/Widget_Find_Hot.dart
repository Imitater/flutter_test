import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sleep_test/bean/HotBean.dart';

class Widget_Find_Hot extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Widget_Find_Hot> {
  final List<HotBean> infoList = [
    HotBean(
        'https://hbimg.huabanimg.com/35003607ee87aa987651f580cf881402afb6321f12cc6-xlMY1e_fw658/format/webp',
        '贝尔烘培',
        '蔓越莓巧克力冰淇淋，吃个冰淇淋解解暑',
        'https://hbimg.huabanimg.com/6d28cfdb0f69acaa5c21651ebfb924a5b796dee646f30-JP2KuL_fw658/format/webp',
        '89'),
    HotBean(
        'https://hbimg.huabanimg.com/8953d6f2ca987cbc1fa6ed740546792b09dd6463fc3f0-BPtp4O_fw658/format/webp',
        'yoyo原色',
        '玫瑰酸奶冰淇淋，听起来就很美的感觉吧，嘻嘻~',
        'https://hbimg.huabanimg.com/3448cdb23e324ed460879f1747b87e1fc10200cb1af85-NdhAo6_fw658/format/webp',
        '77'),
    HotBean(
        'https://hbimg.huabanimg.com/e80e5f6e6c88289cfc3e9ee97b4b13077227098236f4e-wQn3CQ_fw658/format/webp',
        '深蓝小米',
        '汉堡夹心面包，料多美味十足，美味早餐',
        'https://hbimg.huabanimg.com/705b8bd1ef14d6fe357e4acc81b31700e96a466135025-amey79_fw658/format/webp',
        '64'),
    HotBean(
        'https://hbimg.huabanimg.com/eed6b4f783ddbc6d38bb9c7ee80d875c87c9b7fb19265-YUCFZC_fw658/format/webp',
        '阿茶',
        '午夜定食',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '11'),
    HotBean(
        'https://hbimg.huabanimg.com/360232be510bb2f123b66cdc8c158022a6d44ca062af8-DGJNbU_fw658/format/webp',
        '没离开过AI',
        '中式锦盒点心新鲜食物食材美食',
        'https://hbimg.huabanimg.com/50790d6e8866c18b89bb91855dccd568cbada88931ee-mFhGYX_fw658/format/webp',
        '35'),
    HotBean(
        'https://hbimg.huabanimg.com/35003607ee87aa987651f580cf881402afb6321f12cc6-xlMY1e_fw658/format/webp',
        '贝尔烘培',
        '蔓越莓巧克力冰淇淋，吃个冰淇淋解解暑',
        'https://hbimg.huabanimg.com/6d28cfdb0f69acaa5c21651ebfb924a5b796dee646f30-JP2KuL_fw658/format/webp',
        '89'),
    HotBean(
        'https://hbimg.huabanimg.com/8953d6f2ca987cbc1fa6ed740546792b09dd6463fc3f0-BPtp4O_fw658/format/webp',
        'yoyo原色',
        '玫瑰酸奶冰淇淋，听起来就很美的感觉吧，嘻嘻~',
        'https://hbimg.huabanimg.com/3448cdb23e324ed460879f1747b87e1fc10200cb1af85-NdhAo6_fw658/format/webp',
        '77'),
    HotBean(
        'https://hbimg.huabanimg.com/e80e5f6e6c88289cfc3e9ee97b4b13077227098236f4e-wQn3CQ_fw658/format/webp',
        '深蓝小米',
        '汉堡夹心面包，料多美味十足，美味早餐',
        'https://hbimg.huabanimg.com/705b8bd1ef14d6fe357e4acc81b31700e96a466135025-amey79_fw658/format/webp',
        '64'),
    HotBean(
        'https://hbimg.huabanimg.com/eed6b4f783ddbc6d38bb9c7ee80d875c87c9b7fb19265-YUCFZC_fw658/format/webp',
        '阿茶',
        '午夜定食',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '11'),
    HotBean(
        'https://hbimg.huabanimg.com/360232be510bb2f123b66cdc8c158022a6d44ca062af8-DGJNbU_fw658/format/webp',
        '没离开过AI',
        '中式锦盒点心新鲜食物食材美食',
        'https://hbimg.huabanimg.com/50790d6e8866c18b89bb91855dccd568cbada88931ee-mFhGYX_fw658/format/webp',
        '35'),
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
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/hot.png',
                                  width: 48,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    '热门话题',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/time.png',
                                  width: 48,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    '美好时光',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/note.png',
                                  width: 48,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    '夏日笔记',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/thing.png',
                                  width: 48,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    '赛事',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: StaggeredGridView.countBuilder(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 4,
                          itemCount: infoList.length,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var borderRadius2 = BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10));
                            return new Expanded(
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: borderRadius2,
                                        child: Image.network(
                                             infoList[index].gUrl),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          infoList[index].gDesc,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                new CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      infoList[index].gHead),
                                                  radius: 18.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 0, 0, 0),
                                                  child: Text(infoList[index].gName,style: TextStyle(fontSize: 10),),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Image.asset(
                                                  'images/heart.png',
                                                  width: 15,
                                                  height: 15,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text(infoList[index].gCount),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          },
                          staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        ),
                      )
                    ],
                  ))
                ],
              ),
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
          setState(() {
            print('上拉加载结束');
          }
        );
      },
    );
  }
}
