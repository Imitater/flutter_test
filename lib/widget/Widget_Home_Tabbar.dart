import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class Widget_Home_Tabbar extends StatefulWidget {
  @override
  _Widget_Home_Tabbar createState() => new _Widget_Home_Tabbar();
}

// ignore: camel_case_types
class _Widget_Home_Tabbar extends State<Widget_Home_Tabbar> {
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
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: TabBar(
                tabs: _tabValues.map((f) {
                  return Text(f);
                }).toList(),
                controller: _controller,
                indicatorColor: Colors.orange,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                indicatorWeight: 5.0,
                labelStyle: TextStyle(
                    height: 2, fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _controller,
              children: _tabValues.map((f) {
                return Center(
                  child: Text(f),
                );
              }).toList(),
            ))
          ],
        ));
  }
}
