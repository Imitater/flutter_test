import 'package:flutter/material.dart';
import 'package:sleep_test/bean/GridBean.dart';

class DrawContact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _StateRadioBoxDemoPageState();
}

class _StateRadioBoxDemoPageState extends State<DrawContact> {
  List<RadioModel> sampleData = new List<RadioModel>();
  List<GridBean> categoryList = new List<GridBean>();
  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioModel(true, '推荐'));
    sampleData.add(new RadioModel(false, '蛋糕'));
    sampleData.add(new RadioModel(false, '面包'));
    sampleData.add(new RadioModel(false, '饼干'));
    sampleData.add(new RadioModel(false, '甜点饮料'));
    sampleData.add(new RadioModel(false, '西餐西点'));
    sampleData.add(new RadioModel(false, '点心'));
    sampleData.add(new RadioModel(false, '零食'));
    sampleData.add(new RadioModel(false, '其他'));

    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/e49cd9f64aca1d21fd93f3be996719d1f67fb42335a85-8rbOUD_fw658/format/webp',
        '巧克力'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/30813c4854a4c306e4ec66f24bf5a290f3f5cd9817f538-IS7yFn_fw658/format/webp',
        '欧派'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/7b7fdf6e480fbd9627777aa9c07c0be22660534512fdc3-73k4sc_fw658/format/webp',
        '酥饼'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/91bcdb72ed8438a199cc0a9f0862bed8944c14b019ff9c-bNyF9F_fw658/format/webp',
        '手撕面包'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/088bd7274ed38a4a75af223bd4b00d4cd229f67df8f31-7JYVv0_fw658/format/webp',
        '巧克力饼干'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/c4ffcd96a10f0f22167b863884dab922eb2b9f5265fb7-lppsJU_fw658/format/webp',
        '咖啡'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/ba2e2fd2875514497a5cc793a17d533d9eef072f185eac-Txu0Jo_fw658/format/webp',
        '蛋糕'));
    categoryList.add(new GridBean(
        'https://hbimg.huabanimg.com/44efb37e0230e012d877f3b5c44211c282b828b4a7772-Jeu9Mm_fw658/format/webp',
        '舒芙蕾'));
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.bottomCenter,
          height: 88,
          child: Stack(
            children: <Widget>[
              InkWell(
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                  size: 48.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                height: 48,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '食谱分类',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 88,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: new ListView.builder(
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      splashColor: Colors.orange,
                      onTap: () {
                        setState(() {
                          sampleData
                              .forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: new RadioItem(sampleData[index]),
                    );
                  },
                ),
              ),
              Expanded(
                  flex: 2,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                categoryList[index].gUrl,
                                width: 96,
                                height: 96,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            categoryList[index].gName,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: categoryList.length,
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
          height: 20.0,
          width: 5.0,
          decoration: new BoxDecoration(
            color: _item.isSelected ? Colors.orange : Colors.transparent,
            border: new Border.all(
                width: 1.0,
                color: _item.isSelected ? Colors.orange : Colors.grey),
            borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 32.0),
          child: new Text(
            _item.text,
            style: TextStyle(
                color: _item.isSelected ? Colors.orange : Colors.black,
                fontSize: 18),
          ),
        )
      ],
    );
  }
}

class RadioModel {
  bool isSelected;
  final String text;
  RadioModel(this.isSelected, this.text);
}
