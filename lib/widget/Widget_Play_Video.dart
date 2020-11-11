import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  final String url;

  VideoScreen({@required this.url});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final FijkPlayer player = FijkPlayer();
  final List<String> studentInfoList = [
    'https://hbimg.huabanimg.com/5e77dc7c057400a022fcb67b5a32943d16a0cd6d58fc3-6cTaIo_fw658/format/webp',
    'https://hbimg.huabanimg.com/5e77dc7c057400a022fcb67b5a32943d16a0cd6d58fc3-6cTaIo_fw658/format/webp',
    'https://hbimg.huabanimg.com/5e77dc7c057400a022fcb67b5a32943d16a0cd6d58fc3-6cTaIo_fw658/format/webp',
    'https://hbimg.huabanimg.com/5e77dc7c057400a022fcb67b5a32943d16a0cd6d58fc3-6cTaIo_fw658/format/webp',
    'https://hbimg.huabanimg.com/5e77dc7c057400a022fcb67b5a32943d16a0cd6d58fc3-6cTaIo_fw658/format/webp',
  ];

  _VideoScreenState();
  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: double.infinity,
    alignment: Alignment.center,
  );

  @override
  void initState() {
    super.initState();
    player.setDataSource(widget.url, autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 230,
                    child: FijkView(
                      color: Colors.black,
                      fit: fill,
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      player: player,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      '私房爆款|浓情下午甜点简单又好看',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 16),
                        width: 200,
                        height: 20,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    height: 10,
                                    padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                                    color: Colors.grey[300],
                                    child: Text(
                                      '简单',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  )),
                            );
                          },
                          itemCount: 3,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 16, 16),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Text(
                                '532人已加入学习',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://hbimg.huabanimg.com/3d7de2c102148ec19d649f4184f1d5ab17ccdb42d412-pdvrzg_fw658/format/webp'),
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: new CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://hbimg.huabanimg.com/1037228542eafdf93427ea850618b6e4777ddd7928250-nxlF7F_fw658/format/webp'),
                                    radius: 10.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: new CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://hbimg.huabanimg.com/379d0cc46f4cd61803818d6d0612650b4159ea1b9af1-ajDJlC_fw658/format/webp'),
                                    radius: 10.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
                            child: new CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://hbimg.huabanimg.com/3d7de2c102148ec19d649f4184f1d5ab17ccdb42d412-pdvrzg_fw658/format/webp'),
                              radius: 23.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              '丹丹小厨',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: ButtonTheme(
                          height: 30,
                          minWidth: 80,
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
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: TextField(
                      enabled: false, //禁用
                      maxLines: 8,
                      minLines: 1,
                      decoration: InputDecoration.collapsed(
                          hintText:
                              "本节课程我们将学到冷冻技法的最新内容，后糖后油法并制作出六款超级畅销的面包：奶油皇冠小吐司、奶油埃及、葡萄肉桂卷、鹦鹉糖小餐包、巧克力脆皮不理欧、巴黎甜心。",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 8),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Text(
                            '课程内容',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((content, index) {
                return Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.network(
                                  'https://hbimg.huabanimg.com/ab4197537d7970b599f0e91aa542d21c938c1803134ca-JsgSlN_fw658/format/webp',
                                  width: 65,
                                  height: 65,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '前期准备和注意事项',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      '时长:16分钟',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage('images/video_play.png'),
                                  radius: 20.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    '观看',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              }, childCount: 2),
            ),
            new SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 90,
                          color: Colors.yellow,
                        ),
                        Text(
                          '你能学到',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: TextField(
                    enabled: false, //禁用
                    maxLines: 8,
                    minLines: 1,
                    decoration: InputDecoration.collapsed(
                        hintText:
                            "1、厨师级揉面、演示及如何控温\n2、后糖后油的状态识别及掌握最佳额操作阶段\n3、从发酵-分割-松弛-整形的系列操作演示与讲解",
                        hintStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 90,
                          color: Colors.yellow,
                        ),
                        Text(
                          '老师介绍',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: TextField(
                    enabled: false, //禁用
                    maxLines: 8,
                    minLines: 1,
                    decoration: InputDecoration.collapsed(
                        hintText:
                            "烘培美食认证讲师\n热爱研发无添加健康美食\n面包从师于国内大师王传仁老师，吴克己老师擅长甜包制作及各种中西点。\n感恩遇见，在最美的时间遇见最美的你，烘培之路我们一起同行。",
                        hintStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '学生作品',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '更多',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    height: 96,
                    margin: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Expanded(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(studentInfoList[index]),
                          ),
                        ));
                      },
                      itemCount: studentInfoList.length,
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '其他推荐',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '更多',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    height: 300,
                    margin: EdgeInsets.fromLTRB(16, 8, 0, 56),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Expanded(
                          child: Container(
                              width: 160,
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        'https://hbimg.huabanimg.com/c6adcb8cb9811ea5021b6ba3e146dd063c1c0fc52b8f8-5HflzV_fw658/format/webp',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: Text(
                                      '冰豆乳蛋糕，细腻绵密，豆香十足',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                      itemCount: studentInfoList.length,
                    )),
              ],
            )),
          ],
        ),
        Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                blurRadius: 10.0, //阴影模糊程度
                spreadRadius: 1.0 //阴影扩散程度
                )
          ]),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/star.png',
                      width: 24,
                      height: 24,
                    ),
                    Text(
                      '收藏',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return shareDialog();
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/video_share.png',
                        width: 24,
                        height: 24,
                      ),
                      Text(
                        '分享',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: ButtonTheme(
                      height: 35,
                      minWidth: 80,
                      buttonColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: RaisedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '试看',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          )),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: ButtonTheme(
                      height: 35,
                      minWidth: 80,
                      buttonColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: RaisedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '￥29.90购买课程',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          )),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }

  Widget shareDialog() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/wechat.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '微信',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/friend.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '朋友圈',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/share_qq.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'QQ',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/qqzero.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'QQ空间',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 48,
                    height: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/weibo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '微博',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 48,
                height: 48,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/jubao.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  '举报',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              )
            ],
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                child: Text(
                  '取消',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  //关闭弹窗
                  Navigator.of(context).pop();  
                },
              ))
        ],
      ),
    );
  }
}
