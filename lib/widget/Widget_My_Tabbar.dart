import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sleep_test/bean/GridBean.dart';
import 'Widget_My_Note_Grid.dart';
import 'Widget_My_Recipe_Grid.dart';

// ignore: camel_case_types
class Widget_My_Tabbar extends StatefulWidget {
  @override
  _Widget_Home_Tabbar createState() => new _Widget_Home_Tabbar();
}

// ignore: camel_case_types
class _Widget_Home_Tabbar extends State<Widget_My_Tabbar> {
  final List<String> _tabValues = [
    '食谱',
    '笔记',
  ];

  final List<GridBean> gridList = [
    GridBean(
      'https://hbimg.huabanimg.com/40e2c4b2284d446efa65675aa94cb1cb16d6745a19ccac-Bj0DNF_fw658/format/webp',
      '简单制作水果披萨',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/a78520c9477d9cc2e9763dbfe4adbff87f2a75eb2e2dc-KYPhNv_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/f5a36d965db29cec565da0bbb162dc7558fa58ef2ab6e-or3xH5_fw658/format/webp',
      '简单制作水果披萨',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/c90b3450ecea0e04e06e319a7d4aa21d3cc8ebba33bfc-yV7RNx_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/88ee109b5100a5d318df1142354f8defffe79046cc170-NvJW0o_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
  ];

    final List<GridBean> gridNoteList = [
    GridBean(
      'https://hbimg.huabanimg.com/bb44ead2652c87fd8193816b5883a2f105d1815c5d4b7-6QiYng_fw658/format/webp',
      '百香果柠檬茶',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/4b8093bfe370aaab2ad40c8bf007e83935b2ae5978424-sm08ty_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/cb8d7e3fafc80b6c718b5a92ee0ec4606be80c2ca080c-xLcFpL_fw658/format/webp',
      '简单制作水果披萨',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/3f8fc61928742d2de09ee942a144349471aa5059be885-C7qB12_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    GridBean(
      'https://hbimg.huabanimg.com/a262588b53061e9ab45e66ae97076c01efa56e35ad4de-xTNdXb_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _tabValues.length,
      vsync: ScrollableState(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height-420,
        child: Column(
          children: <Widget>[
            TabBar(
              tabs: _tabValues.map((f) {
                return Text(f);
              }).toList(),
              controller: _controller,
              indicatorColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: false,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              indicatorWeight: 5.0,
              labelStyle: TextStyle(
                  height: 2, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Expanded(
                child: TabBarView(
              controller: _controller,
              children: _tabValues.map((f) {
                return _changePage(f);
              }).toList(),
            ))
          ],
        ));
  }

  Widget _changePage(String tab) {
    if (tab == '食谱') {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 2 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Widget_My_Recipe_Grid(gridList[index]);
        },
        itemCount: gridList.length,
      );
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 2 / 1.5,
        ),
        itemBuilder: (context, index) {
          return Widget_My_Note_Grid(gridNoteList[index]);
        },
        itemCount: gridNoteList.length,
      );
    }
  }
}
