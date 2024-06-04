import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/ma_widget/cruved_nav.dart';

import '../conset.dart';
import '../conset/conset_image.dart';
import '../item_pages/item_min_pag.dart';

class ItemRowCard extends StatelessWidget {
  final double retaing;
  final String title;
  final String pro_image;
  final String sub_title;
  final double price;
  final double dis_count;


  ItemRowCard(
      {required this.title,
      required this.pro_image,
      required this.sub_title,
      required this.retaing,
      required this.price,
      required this.dis_count});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GestureDetector(
      child:

      Container(
      height: 150,
      margin: EdgeInsets.symmetric(
          horizontal: defluatPadding, vertical: defluatPadding/2),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0.5,
                offset: Offset(10, 20),
                blurRadius: 2),
          ],
          border: Border.all(
              color: most_color, width: 1.0, style: BorderStyle.solid)
      ),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
// retaing
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.symmetric(
                        horizontal: defluatPadding,),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          retaing.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),


                  //subtitle
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(
                        horizontal: defluatPadding,),
                    child: Text(
                      sub_title,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),


                  //title
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(
                        horizontal: defluatPadding/2,
                        vertical: defluatPadding / 16),
                    child: Text(
                      title,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Colors.black),
                    ),
                  ),



                  //price
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(
                        horizontal: defluatPadding,
                        vertical: defluatPadding / 8),
                    child: Row(children: [
                      Container(

                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: defluatPadding / 4),
                        padding: EdgeInsets.symmetric(
                            horizontal: defluatPadding,
                            vertical: defluatPadding / 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "\$" + price.toString(),
                          style: TextStyle(
                              color: most_color,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Text(
                        '\$' + dis_count.toString(),
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ]),
                  )
                ],
              )),

          //right card for image and favorit icon
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: most_color,width: 1)
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.all(3),
                        alignment: Alignment.center,
                        child: Image.asset(
                          pro_image,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      top: 5,
                      right: 10,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ))
                ],
              )),
        ],
      ),
    ),


     onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return ItemMinPage(
            pro_item_image: pro_image,
            pro_item_title:   sub_title,
            pro_item_details:  title ,
            pro_item_size: dis_count.toString(),
            pro_item_price:  price,
            pro_item_avalible:"متوفر"
        );
      }));

    },

    );
  }
}
