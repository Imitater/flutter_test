import 'package:flutter/material.dart';
import 'package:sleep_test/bean/TodayBean.dart';

class ListHorizontal extends StatefulWidget {
  _ListHorizontal createState() => _ListHorizontal();
}

class _ListHorizontal extends State<ListHorizontal> {
  final List<TodayBean> posts = [
    TodayBean(
      'https://hbimg.huabanimg.com/06553411f529838aeef543df19157132e8d6da72181fa-T2zYDx_fw658/format/webp',
      '简单制作水果披萨',
    ),
    TodayBean(
      'https://hbimg.huabanimg.com/918ff959602463b623c927cc9fb8d7843f1ed66237719-vWSa4X_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    TodayBean(
      'https://hbimg.huabanimg.com/9592c03fd1fec4eea67b1415d10b03bb73c5b43bd07e-zoIQ7H_fw658/format/webp',
      '简单制作水果披萨',
    ),
    TodayBean(
      'https://hbimg.huabanimg.com/2276cfe97d5807a235433e0e3feb126addbab42614b8c-CAhHox_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
    TodayBean(
      'https://hbimg.huabanimg.com/8f7afff5db57de7f58f54ba9f36be7b2d1a090c22f7b4-hkAybx_fw658/format/webp',
      '细腻绵软轻芝士蛋糕',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, //横向滚动
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }

  //list item 布局
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                placeholder: "images/ic_device_image_default.png",
                image: posts[index].url,
                fit: BoxFit.fill,
                width: 200,
                height: 90,
              ),
            ),
          ),
          Text(
            posts[index].name,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
