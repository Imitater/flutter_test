import 'package:flutter/material.dart';
import 'package:sleep_test/bean/GridBean.dart';

class Widget_My_Recipe_Grid extends StatefulWidget {
  GridBean bean;
  Widget_My_Recipe_Grid(GridBean bean) {
    this.bean = bean;
  }
  _Gridview createState() => _Gridview(bean);
}

class _Gridview extends State<Widget_My_Recipe_Grid> {
  GridBean bean;
  _Gridview(GridBean bean) {
    this.bean = bean;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              bean.gUrl,
              height: 100,
              width: 180,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text(
              bean.gName,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          )
        ],
      ),
    ));
  }
}
