import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_test/widget/DrawContact.dart';
import 'package:sleep_test/widget/SmartDrawer.dart';
import 'package:sleep_test/widget/Widget_Main_Bottombar.dart';

void main() {
  runApp(new MaterialApp(home: MyApp()));
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          drawer: SmartDrawer(
            child: DrawContact(),
          ),
          resizeToAvoidBottomPadding: false,
          body: Center(
            child: MyBody(),
          ),
        ));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Widget_Main_BottomBar();
  }
}

// class MyBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Stack(
//       alignment: Alignment.center,
//       children: <Widget>[
//         // 背景图片
//         new Image.asset('images/login_background.png',
//             fit: BoxFit.fill, width: double.infinity, height: double.infinity),
//         new Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             new Padding(
//               padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
//               child: Text(
//                 "FIRST FLUTTER",
//                 style: new TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             //登录框
//             new Container(
//               padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
//               width: 320,
//               height: 310,
//               decoration: BoxDecoration(
//                   color: Colors.lightBlue[50],
//                   borderRadius: BorderRadius.circular(10)),
//               child: Widget_TabBar_Userdefined_Page(),
//             ),
//             Container(
//               height: 20,
//               alignment: Alignment.center,
//               margin: EdgeInsets.fromLTRB(0, 35, 0, 5),
//               child: Text(
//                 '其他快捷登录方式',
//                 style: TextStyle(fontSize: 10, color: Colors.white),
//               ),
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 438,
//                     height: 38,
//                     child: Image.asset('images/weixing.png'),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
//                     width: 32,
//                     height: 32,
//                     child: Image.asset('images/QQ.png'),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
