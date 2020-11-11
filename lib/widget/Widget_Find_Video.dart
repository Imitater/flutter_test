import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sleep_test/bean/HotBean.dart';

class Widget_Find_Video extends StatefulWidget {
  _Gridview createState() => _Gridview();
}

class _Gridview extends State<Widget_Find_Video> {
  final List<HotBean> infoList = [
    HotBean(
        'https://hbimg.huabanimg.com/a2276013482da9738eed1fd5f14f0f8a1cb00a2a1a7a8-PxS5oV_fw658/format/webp',
        'Elaine-倩儿',
        '浓厚宇治抹茶蛋糕',
        'https://hbimg.huabanimg.com/77045e00695d742f3e14a2d43525fecd4e207b30c842-KJjSGY_fw658/format/webp',
        '42'),
    HotBean(
        'https://hbimg.huabanimg.com/b735a67324baf715a9c55acde86f6f8d0647ade93dc9a-kLzrt4_fw658/format/webp',
        '糖小饼',
        '木糖芒果酸奶为炎炎夏日降降暑，口感特别好',
        'https://hbimg.huabanimg.com/6d28cfdb0f69acaa5c21651ebfb924a5b796dee646f30-JP2KuL_fw658/format/webp',
        '56'),
    HotBean(
        'https://hbimg.huabanimg.com/a62e17223b74fc33fec7f224698143d59715d0d767cbe-FsCnRL_fw658/format/webp',
        '懿依坊',
        '海绵蛋糕口感湿润轻盈，不腻基础版小蛋糕',
        'https://hbimg.huabanimg.com/3448cdb23e324ed460879f1747b87e1fc10200cb1af85-NdhAo6_fw658/format/webp',
        '47'),
    HotBean(
        'https://hbimg.huabanimg.com/18b0d771dc1799535a09d7562fa4fc4193f3d14316c99c-o1guXp_fw658/format/webp',
        '淡墨轻衣',
        '美味吃出来',
        'https://hbimg.huabanimg.com/cadefea0f9020e5d786d9015caff2489fb90e2ad8b198-998qmN_fw658/format/webp',
        '66'),
    HotBean(
        'https://hbimg.huabanimg.com/f1e016d293eb92822d6a60997a7ae1ab9340cb2364d13-xAsBE2_fw658/format/webp',
        '西米Fiona',
        '我比较喜欢可可的蛋糕味道，浓厚香醋',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '24'),
    HotBean(
        'https://hbimg.huabanimg.com/2df16a63e44e636f568b25067066b82377ed753230c33-KGrwCI_fw658/format/webp',
        '米思高',
        '芝士苏打饼干，口感香酥，营养丰富，而且能补钙',
        'https://hbimg.huabanimg.com/705b8bd1ef14d6fe357e4acc81b31700e96a466135025-amey79_fw658/format/webp',
        '64'),
    HotBean(
        'https://hbimg.huabanimg.com/8f25dd42208d40ff45bf1fc1f901654fd5e818117cc3-930WUS_fw658/format/webp',
        'ご尛釹笙',
        '淘宝日式小清新食物',
        'https://hbimg.huabanimg.com/654953460733026a7ef6e101404055627ad51784a95c-B6OFs4_sq75sf/format/webp',
        '32'),
    HotBean(
        'https://hbimg.huabanimg.com/f1e016d293eb92822d6a60997a7ae1ab9340cb2364d13-xAsBE2_fw658/format/webp',
        '西米Fiona',
        '我比较喜欢可可的蛋糕味道，浓厚香醋',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '24'),
    HotBean(
        'https://hbimg.huabanimg.com/a2276013482da9738eed1fd5f14f0f8a1cb00a2a1a7a8-PxS5oV_fw658/format/webp',
        'Elaine-倩儿',
        '浓厚宇治抹茶蛋糕',
        'https://hbimg.huabanimg.com/77045e00695d742f3e14a2d43525fecd4e207b30c842-KJjSGY_fw658/format/webp',
        '42'),
    HotBean(
        'https://hbimg.huabanimg.com/b735a67324baf715a9c55acde86f6f8d0647ade93dc9a-kLzrt4_fw658/format/webp',
        '糖小饼',
        '木糖芒果酸奶为炎炎夏日降降暑，口感特别好',
        'https://hbimg.huabanimg.com/6d28cfdb0f69acaa5c21651ebfb924a5b796dee646f30-JP2KuL_fw658/format/webp',
        '56'),
    HotBean(
        'https://hbimg.huabanimg.com/a62e17223b74fc33fec7f224698143d59715d0d767cbe-FsCnRL_fw658/format/webp',
        '懿依坊',
        '海绵蛋糕口感湿润轻盈，不腻基础版小蛋糕',
        'https://hbimg.huabanimg.com/3448cdb23e324ed460879f1747b87e1fc10200cb1af85-NdhAo6_fw658/format/webp',
        '47'),
    HotBean(
        'https://hbimg.huabanimg.com/18b0d771dc1799535a09d7562fa4fc4193f3d14316c99c-o1guXp_fw658/format/webp',
        '淡墨轻衣',
        '美味吃出来',
        'https://hbimg.huabanimg.com/cadefea0f9020e5d786d9015caff2489fb90e2ad8b198-998qmN_fw658/format/webp',
        '66'),
    HotBean(
        'https://hbimg.huabanimg.com/f1e016d293eb92822d6a60997a7ae1ab9340cb2364d13-xAsBE2_fw658/format/webp',
        '西米Fiona',
        '我比较喜欢可可的蛋糕味道，浓厚香醋',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '24'),
    HotBean(
        'https://hbimg.huabanimg.com/2df16a63e44e636f568b25067066b82377ed753230c33-KGrwCI_fw658/format/webp',
        '米思高',
        '芝士苏打饼干，口感香酥，营养丰富，而且能补钙',
        'https://hbimg.huabanimg.com/705b8bd1ef14d6fe357e4acc81b31700e96a466135025-amey79_fw658/format/webp',
        '64'),
    HotBean(
        'https://hbimg.huabanimg.com/8f25dd42208d40ff45bf1fc1f901654fd5e818117cc3-930WUS_fw658/format/webp',
        'ご尛釹笙',
        '淘宝日式小清新食物',
        'https://hbimg.huabanimg.com/654953460733026a7ef6e101404055627ad51784a95c-B6OFs4_sq75sf/format/webp',
        '32'),
    HotBean(
        'https://hbimg.huabanimg.com/f1e016d293eb92822d6a60997a7ae1ab9340cb2364d13-xAsBE2_fw658/format/webp',
        '西米Fiona',
        '我比较喜欢可可的蛋糕味道，浓厚香醋',
        'https://hbimg.huabanimg.com/e4e98719e859676e9452bfea28fb801a31aac78b435ec-JbTRIa_fw658/format/webp',
        '24'),
  ];

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: MaterialHeader(),
      footer: BallPulseFooter(),
      child: CustomScrollView(
        shrinkWrap: true,
        // 内容
        slivers: <Widget>[
          new SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  Container(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: StaggeredGridView.countBuilder(
                      shrinkWrap: true,
                      primary: false,
                      crossAxisCount: 4,
                      itemCount: infoList.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var borderRadius2 = BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10));
                        return new Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: borderRadius2,
                                    child: Image.network(infoList[index].gUrl),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      infoList[index].gDesc,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            new CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  infoList[index].gHead),
                                              radius: 18.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 0, 0),
                                              child: Text(
                                                infoList[index].gName,
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/heart.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child:
                                                  Text(infoList[index].gCount),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
      onRefresh: () async {
        //下拉请求新数据
      },
      onLoad: () async {
        //下拉增加新数据
        print('上拉加载开始');
        await Future.delayed(Duration(seconds: 2), () {
          setState(() {
            print('上拉加载结束');
          });
        });
      },
    );
  }
}
