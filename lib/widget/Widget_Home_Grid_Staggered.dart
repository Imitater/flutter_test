import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class Widget_Home_Grid_Staggered extends StatefulWidget {
  String type;
  int _count;
  Widget_Home_Grid_Staggered(String f, int count) {
    this.type = f;
    this._count = count;
  }

  @override
  State<StatefulWidget> createState() =>
      new _Widget_Home_Grid_Staggered(_count);
}

// ignore: camel_case_types
class _Widget_Home_Grid_Staggered extends State<Widget_Home_Grid_Staggered>
    with AutomaticKeepAliveClientMixin {
  int count;
  _Widget_Home_Grid_Staggered(int count) {
    this.count = count;
  }

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      itemCount: count,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => new Container(
          color: Colors.green,
          child: new Center(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text('$index'),
            ),
          )),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
