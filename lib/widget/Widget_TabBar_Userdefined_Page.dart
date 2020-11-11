import 'package:flutter/material.dart';
import 'package:sleep_test/widget/Widget_Login_Form_Page.dart';
import 'package:sleep_test/widget/Widget_Registered_Form_Page.dart';

// ignore: camel_case_types
class Widget_TabBar_Userdefined_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _Widget_TabBar_Userdefined_Page();
  }
}

// ignore: camel_case_types
class _Widget_TabBar_Userdefined_Page
    extends State<Widget_TabBar_Userdefined_Page>
    with SingleTickerProviderStateMixin {
  var controller;
  var tabs = <Tab>[
    Tab(
      text: "快速登录",
    ),
    Tab(
      text: "用户注册",
    ),
  ];

  @override
  // ignore: must_call_super
  void initState() {
    controller = TabController(
      length: tabs.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 250,
          height: 38.0,
          child: TabBar(
            isScrollable: false,
            //是否可以滚动
            controller: controller,
            labelColor: Colors.blue,
            unselectedLabelColor: Color(0xff666666),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            indicator: const BoxDecoration(),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            tabs: tabs.map((item) {
              return Tab(
                text: item.text,
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: tabs.map((item) {
              return Stack(
                children: <Widget>[_loginView(item.text)],
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  //当整个页面dispose时，记得把控制器也dispose掉，释放内存
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // ignore: missing_return
  Widget _loginView(String item) {
    switch (item) {
      case '快速登录':
        return Stack(
          children: <Widget>[
            new Image.asset('images/user_login_left_background.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity),
            new Container(
              height: 220,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: Widget_Login_Form_page(),
            )
          ],
        );
        break;
      case '用户注册':
        return Stack(
          children: <Widget>[
            Image.asset('images/user_login_right_background.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity),
            new Container(
              height: 220,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: Widget_Registered_Form_page(),
            )
          ],
        );
        break;
      default:
    }
  }
}
