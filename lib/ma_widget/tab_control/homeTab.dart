import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/get_data/product_data.dart';

import '../../conset/conset_image.dart';
import '../../item_card/item_car.dart';
import '../../row_card/item_row_card_screan.dart';
import '../product2card/product2card.dart';

class TabViewHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabViewHome();
  }
}

class _TabViewHome extends State<TabViewHome> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3,
        child:   Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [

            SingleChildScrollView(child: Container(

              child:
              Column(

                children: [
                  for(int i=6;i>=0;i--)

                    ItemRowCard(title: "حقيبة سفر جلد متنوعة الا ستخدام ماوكة ديور درجة اولى الشحن مجان",sub_title: "مقتنيات سفر",pro_image: imageAsset[i].image_path,price: 67.39,dis_count: 24,retaing: 4.2,)

                ],
              ),

            )
            ),



           GridView(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             children: [
               for(int i=1;i<10;i++)
                 Product2Card(product_item:ProductCardData(pro_id: i, pro_item_image:ImageAssts.bag('bag_$i.png') ,
                     pro_item_title: DemoTitle[i], pro_item_price: i*2, pro_item_descrption: DemoTitle[0],
                     pro_item_discount: 40),
                   press: (){},bgColor: Colors.transparent,)

             ],
            ),

  ItemCard(),



          ],),


)
    );
  }
}
