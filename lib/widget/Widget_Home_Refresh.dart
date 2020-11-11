import 'package:flutter/material.dart';
import 'package:sleep_test/bean/ImageBean.dart';
import 'package:sleep_test/ui/message.dart';
import 'package:sleep_test/widget/DrawListener.dart';
import 'package:sleep_test/widget/Widget_Home_Refresh_Head.dart';
import 'Widget_Home_Banner.dart';
import 'Widget_Home_Grid.dart';
import 'Widget_Home_List_Horizontal.dart';
import 'Widget_Home_SubSliverAppBarDelegate.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

// ignore: camel_case_types
class Widget_Home_Refresh extends StatefulWidget {
  @override
  _Widget_Home_Refresh createState() => new _Widget_Home_Refresh();
}

// ignore: camel_case_types
class _Widget_Home_Refresh extends State<Widget_Home_Refresh> {
  TabController _tabController;

  final List<String> _tabValues = [
    '精选',
    '新手',
    '亲子',
    '网红',
    '夏季必做',
    '高颜值',
    '进阶',
    '热门',
  ];

  int page = 1;

  List<ImageBean> _imageList = new List();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabValues.length,
      vsync: ScrollableState(),
    );

    //初始话数据
    _setImageData();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(
        header: SpaceHeader(),
        footer: BallPulseFooter(),
        builder: (context, physics, header, footer) {
          return CustomScrollView(
            physics: physics,
            slivers: <Widget>[
              header,
              _HeadSearch(),
              _AppBar(),
              SliverPersistentHeader(
                pinned: true,
                delegate: SubSliverAppBarDelegate(
                    //头部吸附
                    maxHeight: 40,
                    minHeight: 40,
                    child: Container(
                      color: Color(0xfff8f8f8),
                      child: TabBar(
                        tabs: _tabValues.map((f) {
                          return Text(f);
                        }).toList(),
                        controller: _tabController,
                        indicatorColor: Colors.orange,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        indicatorWeight: 5.0,
                        labelStyle: TextStyle(
                            height: 2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
              SliverFillViewport(
                  viewportFraction: 1.13 * page,
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return TabBarView(
                        controller: _tabController,
                        children: _tabValues
                            .map((f) => GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding:
                                      EdgeInsets.only(left: 5.0, right: 5.0),
                                  itemCount: _imageList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    //Widget Function(BuildContext context, int index)
                                    return _GridCard(_imageList[index]);
                                  },
                                  //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    //横轴元素个数
                                    crossAxisCount: 2,
                                    //纵轴间距
                                    mainAxisSpacing: 5,
                                    //横轴间距
                                    crossAxisSpacing: 5,
                                  ),
                                ))
                            .toList());
                  }, childCount: 1)),
              footer,
            ],
          );
        },
        onRefresh: () async {
          print('下拉刷新开始');
          setState(() {
            _imageList.clear();
            _setImageData();
            page = 1;
            print('下拉刷新结束');
          });
        },
        onLoad: () async {
          print('上拉加载开始');

          setState(() {
            _addData();
            page++;
            print('上拉加载结束');
          });
        });
  }

  //card
  Widget _GridCard(ImageBean imageList) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.network(
                  imageList.gUrl,
                  height: 130,
                  width: 195,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text(
                imageList.gName,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(imageList.authorUrl),
                            maxRadius: 13.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              imageList.gAuthor,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          imageList.gType == 'EXISE' ? '练习' : '其他',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      )
                    ]))
          ],
        ));
  }

  //AppBAR
  Widget _AppBar() {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 463,
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
              //今日推荐
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('今日推荐',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                      Text('更多')
                    ],
                  )),
              //列表
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                child: ListHorizontal(),
              ),
            ],
          ),
        ),
      ),
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
        child: // top 搜索  侧滑
            Container(
          color: Colors.white,
          height: 80,
          padding: EdgeInsets.fromLTRB(0, 32, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                child: Image.asset(
                  'images/list.png',
                  width: 25,
                  height: 25,
                ),
                onTap: () {
                  eventBus.fire(new DrawContentEvent('open'));
                },
              ),
              Container(
                height: 30,
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    counterStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.fromLTRB(10, -10, 10, 0),
                    fillColor: Color(0x30cccccc),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x00FF0000)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '搜索美食 用户',
                    hintStyle: TextStyle(fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x00000000)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              InkWell(
                child: Image.asset('images/message.png', width: 25, height: 25),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Message();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _setImageData() {
    //添加图片
    ImageBean img1 = new ImageBean(
        "https://hbimg.huabanimg.com/c059e8d148d853ccabefb9f9b2e8eeb2aeed7c9ae5440-tMDdof_fw658/format/webp",
        '嘬一口小龙虾，夏天的味道~',
        'guess',
        'https://hbimg.huabanimg.com/1fea34f36f9967638ed8abcd05ded4da59d7718213f0a-A5ExCK_fw658/format/webp',
        'ISEXISE',
        '');
    ImageBean img2 = new ImageBean(
        "https://hbimg.huabanimg.com/25b41b690f6217c6dabfe383d16187ae19d656ed57de2-esHW4S_fw658/format/webp",
        '这份卷子居然把老师给难住了',
        'guess',
        'https://hbimg.huabanimg.com/1fea34f36f9967638ed8abcd05ded4da59d7718213f0a-A5ExCK_fw658/format/webp',
        'EXISE',
        '');

    ImageBean img3 = new ImageBean(
        "https://hbimg.huabanimg.com/b95cd7329e343415095afd9680c1ec01ff855356b7d7a-T4HTWQ_fw658/format/webp",
        '手边巴黎',
        '空壳机',
        'https://hbimg.huabanimg.com/f567f5e128a8b7a45cb6c451df3eaec7e4a2e0d413f75-7cUqFQ_fw658/format/webp',
        'EXISE',
        '');
    ImageBean img4 = new ImageBean(
        "https://hbimg.huabanimg.com/bf8bc7bb9491468e9f56a8398d42827da618f60855723-hmk9ru_fw658/format/webp",
        '碧梨仿妆',
        '阿萨德撒旦',
        'https://hbimg.huabanimg.com/7bdc97e546fb59e65584b916021b193addde1d3a10b90-8pifaR_fw658/format/webp',
        'EXISE',
        '');
    ImageBean img5 = new ImageBean(
        "https://hbimg.huabanimg.com/9d896d6c8d2c27b44f1b5c685bfdff11a619d2d2dd2c7-uqSZv5_fw658/format/webp",
        'Lisa仿妆',
        'guess',
        'https://hbimg.huabanimg.com/2813af237802fa6515c14559fdca863933b94b1a1aa60-IGxpMW_fw658/format/webp',
        'ISEXISE',
        '');
    _imageList.add(img1);
    _imageList.add(img2);
    _imageList.add(img3);
    _imageList.add(img4);
    _imageList.add(img5);
    _imageList.add(img1);
    _imageList.add(img2);
    _imageList.add(img3);
    _imageList.add(img4);
    _imageList.add(img5);
  }

  void _addData() {
    //添加图片
    ImageBean img1 = new ImageBean(
        "https://hbimg.huabanimg.com/314406430e079985512a22a6103e1dd35f09ec5349f8e-rV7Nrn_fw658/format/webp",
        '肿瘤患者是一种怎样体验',
        'guess',
        'https://hbimg.huabanimg.com/1fea34f36f9967638ed8abcd05ded4da59d7718213f0a-A5ExCK_fw658/format/webp',
        'ISEXISE',
        '');
    ImageBean img2 = new ImageBean(
        "https://hbimg.huabanimg.com/2eb63be306c9e662fc8a451bd36527e8bc152c9f66a96-hXVzse_fw658/format/webp",
        '北漂博主的vlog体验',
        'guess',
        'https://hbimg.huabanimg.com/1fea34f36f9967638ed8abcd05ded4da59d7718213f0a-A5ExCK_fw658/format/webp',
        'EXISE',
        '');

    ImageBean img3 = new ImageBean(
        "https://hbimg.huabanimg.com/44e026c2f973edf2cf6faac4ac04181c3b65b18221c86-ZOsuvD_fw658/format/webp",
        '在家也能做SPA',
        'aaa',
        'https://hbimg.huabanimg.com/f567f5e128a8b7a45cb6c451df3eaec7e4a2e0d413f75-7cUqFQ_fw658/format/webp',
        'EXISE',
        '');
    ImageBean img4 = new ImageBean(
        "https://hbimg.huabanimg.com/3e600402346d5ff017b8a1633b6a26176adc888342fe9-gzdqHB_fw658/format/webp",
        '神仙好物',
        '采光好',
        'https://hbimg.huabanimg.com/7bdc97e546fb59e65584b916021b193addde1d3a10b90-8pifaR_fw658/format/webp',
        'EXISE',
        '');
    ImageBean img5 = new ImageBean(
        "https://hbimg.huabanimg.com/67b0f51836ee70f73db93edec0c80f35a5c96295651f5-5ce9SC_fw658/format/webp",
        '圣诞礼物大揭秘',
        'AKA',
        'https://hbimg.huabanimg.com/2813af237802fa6515c14559fdca863933b94b1a1aa60-IGxpMW_fw658/format/webp',
        'ISEXISE',
        '');
    _imageList.add(img1);
    _imageList.add(img2);
    _imageList.add(img3);
    _imageList.add(img4);
    _imageList.add(img5);
    _imageList.add(img1);
    _imageList.add(img2);
    _imageList.add(img3);
    _imageList.add(img4);
    _imageList.add(img5);
  }
}

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar widget;
  final Color color;

  const SliverTabBarDelegate(this.widget, {this.color})
      : assert(widget != null);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: widget,
      color: color,
    );
  }

  @override
  bool shouldRebuild(SliverTabBarDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent => widget.preferredSize.height;

  @override
  double get minExtent => widget.preferredSize.height;
}
