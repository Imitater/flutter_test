import 'package:flutter/material.dart';
import 'package:sleep_test/bean/GridBean.dart';
import 'package:sleep_test/ui/wikipedia.dart';

class Gridview extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Gridview> {
  List<GridBean> getDataList() {
    List<GridBean> list = [];
    list.add(new GridBean('images/1.png', '烘培百科'));
    list.add(new GridBean('images/2.png', '排行榜'));
    list.add(new GridBean('images/3.png', '关注动态'));
    list.add(new GridBean('images/4.png', '本周最火'));
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(GridBean item) {
    return InkWell(
      child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Image.asset(
                item.gUrl,
                width: 48,
                height: 48,
              ),
              Text(
                item.gName,
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Wikipedia();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<GridBean> datas = getDataList();
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
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
