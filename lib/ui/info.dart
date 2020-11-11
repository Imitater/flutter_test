import 'package:flutter/material.dart';
import 'package:sleep_test/bean/infoBean.dart';

void main() {
  runApp(new MaterialApp(home: Info()));
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  List<InfoBean> list = [
    new InfoBean('低脂面粉', '150克'),
    new InfoBean('鸡蛋', '1个'),
    new InfoBean('细砂糖', '60克'),
    new InfoBean('橙汁', '40克'),
    new InfoBean('黄油', '30克'),
    new InfoBean('黑巧克力', '60克'),
  ];
  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          leading: GestureDetector(
            child: Icon(Icons.navigate_before),
            onTap: () => Navigator.pop(context),
          ),
          //左侧按钮
          /**
             * 如果没有leading，automaticallyImplyLeading为true，就会默认返回箭头
             * 如果 没有leading 且为false，空间留给title
             * 如果有leading，这个参数就无效了
             */
          automaticallyImplyLeading: true,
          // title: Text('大标题'), //标题
          centerTitle: true, //标题是否居中
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.share),
            )
          ], //右侧的内容和点击事件啥的
          elevation: 2, //阴影的高度
          backgroundColor: Colors.white,
          forceElevated: false, //是否显示阴影
          brightness: Brightness.dark, //黑底白字，lignt 白底黑字
          iconTheme: IconThemeData(
              color: Colors.black,
              size: 24,
              opacity: 1), //所有的icon的样式,不仅仅是左侧的，右侧的也会改变
          textTheme: TextTheme(), //字体样式
          primary: true, // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
          titleSpacing: 0.0, //标题两边的空白区域
          expandedHeight: 325.0, //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
          floating: false, //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
          pinned: true, //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
          snap:
              false, //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
          flexibleSpace: new FlexibleSpaceBar(
            centerTitle: false,
            collapseMode: CollapseMode.pin,
            title: Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text(
                '清露风荷',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            background: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://hbimg.huabanimg.com/b9dc63bafee925e864093173b6dd41499eb8dbc92c13e-tI9tcr_fw658/format/webp',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      '美味好吃到眩晕的吮指甜甜圈',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 16),
                    width: 200,
                    height: 20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 10,
                                padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                                color: Colors.grey[300],
                                child: Text(
                                  '简单',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              )),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://hbimg.huabanimg.com/1f1745e56fb485bfa7c13075980758abc560d7c411e2f-npWToS_fw658/format/webp'),
                          radius: 22.0,
                        ),
                        ButtonTheme(
                          height: 30,
                          minWidth: 50,
                          buttonColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: RaisedButton(
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '关注',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        new SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 1600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: TextField(
                    enabled: false, //禁用
                    maxLines: 8,
                    minLines: 1,
                    decoration: InputDecoration.collapsed(
                        hintText:
                            "做个可爱的甜甜圈，更是自己的心情也好起来，不枉我忙活大半天，没有绘画基础，只能做这种简单的简笔画了\n大家自己根据需求来换算用量哦。",
                        hintStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 150,
                          height: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular((8.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/info_time.png',
                                width: 24,
                                height: 24,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('30分钟',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              )
                            ],
                          )),
                      Container(
                          width: 150,
                          height: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular((8.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/info_star.png',
                                width: 24,
                                height: 24,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('难度(简单)',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    '食材',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: 260,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(list[index].gTitle,
                                  style: TextStyle(fontSize: 16)),
                              Text(list[index].gCount,
                                  style: TextStyle(fontSize: 16))
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider();
                        },
                        itemCount: list.length,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '烹饪步骤',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '进入跟做模式',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                Container(
                    height: 1000,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 16, top: 16),
                                  child: Text(
                                    '步骤1/3',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  child: Image.network(
                                      'https://hbimg.huabanimg.com/4a4d289de62f28bf8d2c66f83d86f7c48a3017d628df9-hIpVKN_fw658/format/webp'),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: TextField(
                                    enabled: false, //禁用
                                    maxLines: 8,
                                    minLines: 1,
                                    decoration: InputDecoration.collapsed(
                                        hintText:
                                            "准备好其他食材，全蛋加入细砂糖，放置到50度左右的温水中，并用打蛋器打发",
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: 3,
                        ))),
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
                    child: Text(
                      '评论(22)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://hbimg.huabanimg.com/b17b2743f2cf02cba0af7e2b65ef1d03ab88f169fe34-QPwZJl_fw658/format/webp'),
                            radius: 22.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                child: Text(
                                  "何艳",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  child: Text(
                                    "2分钟前",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/heart.png",
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              '10',
                              style: TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      '还没看配方，开场白就看了好几遍，今天试着做一下。',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ],
              ),
            ));
          }, childCount: 5),
        )
      ],
    );
  }
}
