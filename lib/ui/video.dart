import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:sleep_test/ui/play.dart';
import 'package:sleep_test/widget/Widget_Home_SubSliverAppBarDelegate.dart';
import 'package:sleep_test/widget/Widget_Video_Banner.dart';
import 'package:sleep_test/widget/Widget_Video_Grid.dart';

void main() {
  runApp(new MaterialApp(home: Video()));
}

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
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
    return EasyRefresh.builder(
      header: MaterialHeader(),
      footer: BallPulseFooter(),
      builder: (context, physics, header, footer) {
        return CustomScrollView(
          physics: physics,
          slivers: <Widget>[
            header,
            _HeadSearch(),
            _AppBar(),
            footer,
          ],
        );
      },
      onRefresh: () async {
        //下拉请求新数据
      },
      onLoad: () async {
        //下拉增加新数据
        print('上拉加载开始');
        await Future.delayed(Duration(seconds: 2), () {});
      },
    );
  }

  //头部吸附查询框
  Widget _HeadSearch() {
    return SliverPersistentHeader(
      pinned: true, //是否固定在顶部
      floating: true,
      delegate: SubSliverAppBarDelegate(
        //头部吸附
        maxHeight: 80,
        minHeight: 80,
        child: // top 搜索
            Container(
          color: Colors.white,
          height: 80,
          padding: EdgeInsets.fromLTRB(32, 32, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 80,
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    counterStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.fromLTRB(10, -10, 10, 0),
                    fillColor: Color(0x30cccccc),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x00FF0000)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '搜索食谱、用户',
                    hintStyle: TextStyle(fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x00000000)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: Image.asset(
                  'images/video_more.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _AppBar() {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 660,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Container(
          //头部整个背景颜色
          height: double.infinity,
          color: Color(0xfff9f9f9),
          child: Column(
            children: <Widget>[
              //轮播图
              BannerBar(),
              //四按钮
              Gridview(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '热卖课程',
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: 190,
                  margin: EdgeInsets.fromLTRB(16, 8, 0, 0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 140,
                        child: InkWell(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'https://hbimg.huabanimg.com/8fd5bfd7da62466926b1ad11a29f3fb6e6d9e4508993f-Y5BJdF_fw658/format/webp',
                                    width: 140,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment(0, 0),
                                      width: 140,
                                      child: Text(
                                        '小花Rita',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 5, 0, 8),
                                      child: Text(
                                        '7066人加入学习',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            print('CALL');
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Play();
                            }));
                          },
                        ),
                      );
                    },
                    itemCount: 10,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
