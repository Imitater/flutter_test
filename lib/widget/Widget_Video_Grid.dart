import 'package:flutter/material.dart';
import 'package:sleep_test/bean/GridBean.dart';

class Gridview extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Gridview> {
  List<GridBean> getDataList() {
    List<GridBean> list = [];
    list.add(new GridBean('images/dangao.png', '蛋糕'));
    list.add(new GridBean('images/mianbao.png', '面包'));
    list.add(new GridBean('images/tinadian.png', '甜点'));
    list.add(new GridBean('images/yingping.png', '饮品'));
    list.add(new GridBean('images/binggan.png', '饼干'));
    list.add(new GridBean('images/pisha.png', '披萨'));
    list.add(new GridBean('images/bingqiling.png', '冰淇淋'));
    list.add(new GridBean('images/vip.png', 'VIP免费'));
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(GridBean item) {
    return Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Image.asset(
              item.gUrl,
              width: 45,
              height: 45,
            ),
            Text(
              item.gName,
              style: TextStyle(fontSize: 12, color: Colors.black),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<GridBean> datas = getDataList();
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: GridView.custom(
            physics: new NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            childrenDelegate: SliverChildBuilderDelegate((context, position) {
              return getItemContainer(datas[position]);
            }, childCount: datas.length)));
  }
}
