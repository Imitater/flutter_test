import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sleep_test/widget/Widget_Wikipedia_Skills.dart';

// ignore: camel_case_types
class Widget_Wikipedia_Tab extends StatefulWidget {
  @override
  _Widget_Wikipedia_Tab createState() => new _Widget_Wikipedia_Tab();
}

class _Widget_Wikipedia_Tab extends State<Widget_Wikipedia_Tab>
    with SingleTickerProviderStateMixin {
  TabController controller;
  var tabs = <String>[];

  @override
  void initState() {
    super.initState();
    tabs = <String>[
      '技巧手法',
      '用户经验',
      '工具材料',
    ];

    //initialIndex初始选中第几个
    controller =
        TabController(initialIndex: 0, length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height-88,
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
    if (tab == '技巧手法') {
      return Widget_Wikipedia_Skills();
    } else if (tab == '用户经验') {
      return Widget_Wikipedia_Skills();
    } else {
      return Widget_Wikipedia_Skills();
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
