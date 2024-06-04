import 'dart:convert';

import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

import '../account/account_home.dart';
import '../catgories/m_catgory.dart';
import '../get_data/get_product.dart';
import '../item_card/item_car.dart';
import '../ma_widget/edit_search.dart';
import '../ma_widget/homebar.dart';
import '../notifition/noti_home.dart';
import '../search/search_screan.dart';


class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }

}

class _HomePage extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(titleHead: 'الصفـحــة الرئسية',),
          Container(
            decoration: BoxDecoration(
              color: body_color,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(defluatPadding * 2),
                  topLeft: Radius.circular(defluatPadding * 2)),
            ),
            child: Column(
              children: [



                // search widget
                SaerchWidget(
                    "....ابحث عن طلبك",
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 27,
                      color: most_color,
                    )),

                //title catgories
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(
                      horizontal: defluatPadding, vertical: 0),
                  child: Text(
                    '-> الاقـسـامـ ',
                    style: TextStyle(
                        fontSize: 17,
                        color: most_color,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                //catgories list
                Catgrories(),

                // title best selling
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(
                      horizontal: defluatPadding, vertical: 0),
                  child: Text(
                    '-> الاكثر  مبيعا ',
                    style: TextStyle(
                        fontSize: 17,
                        color: most_color,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                //best selling  items
                ItemCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:

      CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: most_color,
        items: <Widget>[
          Badge(
            badgeColor: Colors.redAccent,
            padding: EdgeInsets.all(4),
            badgeContent:

            Text(
              number_product_sales.toInt().toString(),
              style: TextStyle(color: Colors.white,fontSize: 10),
            )
            ,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return NotiHome();
                }));

              },
              child: Icon(
                Icons.notifications_none,
                color: Bg_backColor,
                size: 35,
              ),
            ),
          ),


          IconButton(
            onPressed: () {

              showSearch(context: context, delegate: SearchData(serchitems: ListSearchReslut));

            },
            icon: Icon(Icons.home_outlined, color: Colors.white, size: 30),

          ),
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AccountHome();
            }));
          },
            icon: Icon(Icons.person, color: Colors.white, size: 30), iconSize: 30,),


        ],
        onTap: (index) {
//Handle button tap
        },
      ),
    );
  }
}
