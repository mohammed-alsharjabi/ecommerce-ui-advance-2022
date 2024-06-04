import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/search/search_screan.dart';

import 'account/account_home.dart';
import 'catgories/catgory_item.dart';
import 'get_data/get_product.dart';

final most_color=Color(0xff4c53a5);
// final most_color=Color(0xffaa53a5);
final body_color=Color(0xffedecf2);
final Bg_backColor =Colors.white;
final defaultPadding=16.0;
final defluatPadding=16.0;

int number_product_sales=0;
late  VoidCallback press_update;

void calcultor_sales()
{number_product_sales++;}


void Incalcultor_sales()
{number_product_sales--;}

 final  MainUrl="http://localhost:8080/matliat/public/api/categories/";


CurvedNavigationBar NavBar(BuildContext context) {
 return
   CurvedNavigationBar(
    backgroundColor: Colors.white,
    color: most_color,
    items: <Widget>[
      IconButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatgoryItem();
        }));
      },
        icon: Icon(Icons.favorite_border, color: Colors.white, size: 30),
        iconSize: 30,),

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
  );
}
