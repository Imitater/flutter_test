import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sleep_test/ui/find.dart';
import 'package:sleep_test/ui/home.dart';
import 'package:sleep_test/ui/index.dart';
import 'package:sleep_test/ui/my.dart';
import 'package:sleep_test/ui/video.dart';
import 'package:sleep_test/widget/DrawListener.dart';

// ignore: camel_case_types
class Widget_Main_BottomBar extends StatefulWidget {
  @override
  _Widget_Main_BottomBar createState() => new _Widget_Main_BottomBar();
}

// ignore: camel_case_types
class _Widget_Main_BottomBar extends State<Widget_Main_BottomBar> {
  Color _tabColor = Colors.black;
  int _index = 0;
  List titles = ["首页", "课程", "发现", "我的"];

  List<Widget> list = new List();

  var _pageController;

  List normalImgUrls = [
    "images/main_unselect.png",
    "images/video_unselect.png",
    "images/find_unselect.png",
    "images/my_unselect.png"
  ];
  List selectedImgUrls = [
    "images/main_select.png",
    "images/video_select.png",
    "images/find_select.png",
    "images/my_select.png"
  ];

  @override
  void initState() {
    super.initState();
    //页面控制器
    _pageController = new PageController(initialPage: _index);
    list..add(Home())..add(Video())..add(Find())..add(My());
    //监听广播
    eventBus.on<DrawContentEvent>().listen((event) {
      Scaffold.of(context).openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 5;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Index();
          }));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: new PageView.builder(
        onPageChanged: _pageChange,
        controller: _pageController,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return list.elementAt(_index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 56, width: itemWidth, child: tabs(0)),
            SizedBox(height: 56, width: itemWidth, child: tabs(1)),
            SizedBox(
              height: 56,
              width: itemWidth,
            ),
            SizedBox(height: 56, width: itemWidth, child: tabs(2)),
            SizedBox(height: 56, width: itemWidth, child: tabs(3)),
          ],
        ),
      ),
    );
  }

  //pager 变化监听
  void _pageChange(int index) {
    setState(() {
      if (_index != index) {
        _index = index;
      }
    });
  }

// 自定义BottomAppBar
  Widget tabs(int index) {
    //设置未选中状态
    TextStyle style = TextStyle(fontSize: 10, color: Colors.black);
    String imgUrl = normalImgUrls[index]; //未选中的图片
    if (_index == index) {
      //选中的话
      style = TextStyle(fontSize: 10, color: Colors.orange);
      imgUrl = selectedImgUrls[index];
    }

    //构造返回的Widget
    Widget item = Container(
      alignment: Alignment.center,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(imgUrl, width: 25, height: 25),
            Text(
              titles[index],
              style: style,
            )
          ],
        ),
        onTap: () {
          // 过pageview的pagecontroller的animateToPage方法可以跳转
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
    );
    return item;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('_tabColor', _tabColor));
  }
}
