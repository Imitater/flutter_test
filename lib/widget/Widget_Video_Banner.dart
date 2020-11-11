import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'WarmPainter.dart';

class BannerBar extends StatefulWidget {
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BannerBar> {
  List imgList = [
    "https://hbimg.huabanimg.com/aa27721399c7ef05130dfc7b56a23dd6d625047d336e6-88VJXa_fw658/format/webp",
    "https://hbimg.huabanimg.com/48e93a68720bff996bc8f8d44b2a08c3ac0fc9c61d8ab-YkuIKL_fw658/format/webp",
    "https://hbimg.huabanimg.com/a9ad7a0b410485efd880869a2d41a513f961077311090-m7kEEy_fw658/format/webp",
    "https://hbimg.huabanimg.com/c10ee2b7f32b7f86118c0666bd70a9c2e2c3a77b266bb-yZ1Adh_fw658/format/webp",
    "https://hbimg.huabanimg.com/cfb1afa8a839c19a024afd52e11965baad297e7b5c6e2-1xBKc1_fw658/format/webp",
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
                  layout: PageIndicatorLayout.WARM,
                  size: 5,
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
