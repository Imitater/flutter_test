import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Widget_Find_Focus.dart';
import 'Widget_Find_Hot.dart';
import 'Widget_Find_Video.dart';

// ignore: camel_case_types
class Widget_Find_Tabbar extends StatefulWidget {
  @override
  _Widget_Find_Tabbar createState() => new _Widget_Find_Tabbar();
}

class _Widget_Find_Tabbar extends State<Widget_Find_Tabbar>
    with SingleTickerProviderStateMixin {
  TabController controller;
  var tabs = <String>[];

  @override
  void initState() {
    super.initState();
    tabs = <String>[
      '关注',
      '热门',
      '视频',
    ];

    //initialIndex初始选中第几个
    controller =
        TabController(initialIndex: 0, length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: TabBar(
                tabs: tabs.map((f) {
                  return Text(f);
                }).toList(),
                controller: controller,
                indicatorColor: Colors.orange,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                indicatorWeight: 5.0,
                labelStyle: TextStyle(
                    height: 2, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: controller,
              children: tabs.map((f) {
                return Center(child: _changePage(f));
              }).toList(),
            ))
          ],
        ));
  }

  Widget _changePage(String tab) {
    print(tab);
    if (tab == '关注') {
      return Widget_Find_Focus();
    } else if (tab == '热门') {
      return Widget_Find_Hot();
    }else {
      return Widget_Find_Video();
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
