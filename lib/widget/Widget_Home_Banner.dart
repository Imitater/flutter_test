import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'WarmPainter.dart';

class BannerBar extends StatefulWidget {
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BannerBar> {
  List imgList = [
    "https://hbimg.huabanimg.com/9be76170fe69eebbac0916b41b10ed1a20f45cee26499-OfM1Wm_fw658/format/webp",
    "https://hbimg.huabanimg.com/e5058e8a5231d295f8dc8c129f9c5902262bbf682506a-5s1NNd_fw658/format/webp",
    "https://hbimg.huabanimg.com/0c52857c9e652f1fa0637bccfddd331c89ea3127253d5-yLb0Aq_fw658/format/webp",
    "https://hbimg.huabanimg.com/22e0ee9658ded677ceba7a7beec8c7f4d2bf3c6c22edb-5Mi3C2_fw658/format/webp",
    "https://hbimg.huabanimg.com/027fa73f949ed0d3adcef045d02a6ba18efb551c1c1d4-CMw1dp_fw658/format/webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
            itemBuilder: _swiperBuilder,
            itemCount: imgList.length,
            control: null,
            scrollDirection: Axis.horizontal,
            autoplay: true,
            onTap: (index) => print('点击了第$index个'),
            pagination: new SwiperCustomPagination(
              builder: (BuildContext context, SwiperPluginConfig config) {
                return Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  alignment: Alignment.bottomCenter,
                  child: PageIndicator(
                  layout: PageIndicatorLayout.NIO,
                  size: 10,
                  space: 20,
                  count: imgList.length,
                  controller: config.pageController,
                  color: Colors.orange[50],
                  activeColor: Colors.orange[500],
                ),
                );
              },
            )));
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Center(
        child: Container(
      width: 380,
      height: 180,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FadeInImage.assetNetwork(
          placeholder: "images/ic_device_image_default.png",
          image: imgList[index],
          fit: BoxFit.fill,
        ),
      ),
    )));
  }
}
