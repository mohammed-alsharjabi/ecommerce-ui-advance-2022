import 'package:flutter/material.dart';
import 'package:untitled10/notifition/widgets/noti_card.dart';

import '../conset.dart';
import '../get_data/data_test/test_product.dart';
import '../ma_widget/ads_card.dart';
import '../ma_widget/homebar.dart';

class NotiHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotiHome();
  }
}



class _NotiHome extends State<NotiHome> {

  Product p=Product(image: "imaegs/4.png",price: 15,descrption: "يي",id: 1,title: "متجر العزاني",subtitle: "العنوان صنعاء-شارع السبعبن");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Bg_backColor,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                children: [
                  HomeAppBar(
                    titleHead: 'المفـضــلة',
                  ),

               Container(
                        decoration: BoxDecoration(
                          color: body_color,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(defluatPadding * 2),
                              topLeft: Radius.circular(defluatPadding * 2)),
                        ),
                        child:Column(
                          children: [
                            for(int i=0;i<item_product_list.length;i++)
                              NotiCard(
                                title: item_product_list[i].pro_item_title,
                                cookTime:
                                item_product_list[i].pro_id.toString(),
                                rating: '4.3',
                                thumbnailUrl:
                                item_product_list[i].pro_item_image,
                              )

                          ],
                        )

               )
                ]
              ),
            )));
  }
}
