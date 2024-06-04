import 'package:flutter/material.dart';

import '../conset.dart';

class AdsCard extends StatelessWidget {
  final String crd_ads_details;
  final String crd_ads_image;
  final String crd_ads_btnTile;

  AdsCard(
      {required this.crd_ads_btnTile,
      required this.crd_ads_details,
      required this.crd_ads_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(
          horizontal: defluatPadding, vertical: defluatPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defluatPadding / 4, vertical: defluatPadding / 2),
      decoration: BoxDecoration(
          color: most_color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0.5,
                offset: Offset(0, 0),
                blurRadius: 2),
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      text: TextSpan(

                          children: [
                        TextSpan(
                          text: crd_ads_details,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ])),
                  Container(
                    height: 30,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: defluatPadding + 20),
                    padding: EdgeInsets.symmetric(
                        horizontal: defluatPadding / 4,
                        vertical: defluatPadding / 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      crd_ads_btnTile,
                      style: TextStyle(
                          color: most_color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(
                  horizontal: defluatPadding, vertical: defluatPadding / 2),
              child: Image.asset(
                crd_ads_image,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}



class ProcductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Color color;
  // final Function press;
  const ProcductCard(
      {required this.itemIndex, required this.product, required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return //start the card
        Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: defluatPadding, vertical: defluatPadding/4),
              padding: EdgeInsets.symmetric(
                  horizontal: defluatPadding , vertical: defluatPadding / 2),
              height: 150,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("DetailsScrean");
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: color,
                      ),
                    ),
                    Positioned(

                      left: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: defluatPadding / 2),
                        // margin: EdgeInsets.symmetric(horizontal: defluatPadding ),
                        height: 120,
                        width: 180,
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),



                    // container title and sub title
                    Positioned(
                        right: 0.0,
                        bottom: 0,
                        child: Container(
                          margin: EdgeInsets.all(0),
                            child: SizedBox(
                          height: 136.0,
                          width: MediaQuery.of(context).size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            textDirection: TextDirection.ltr,
                            textBaseline: TextBaseline.ideographic,
                            children: [

                              // title
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defluatPadding/2,vertical: defluatPadding),
                                child: Text(
                                  product.title,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ),

                              // subtitle
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defluatPadding),
                                child: Text(
                                  product.subtitle,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ),


                              //main button
                              Positioned(


                                child:Container(
                                  width: 110,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defluatPadding * 2,vertical: defluatPadding/4),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defluatPadding / 2,
                                      vertical: defluatPadding / 5),
                                  decoration: BoxDecoration(
                                      color: most_color.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(22)),
                                  child: Text(
                                    "\$"+product.price.toString() ,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      textBaseline: TextBaseline.ideographic,
                                        decoration: TextDecoration.underline,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                        )
                    )
                  ],
                ),
              ),
            ));
  }
}




//joust for data
class Product {
  final int id, price;
  final String title, subtitle, descrption, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subtitle,
      required this.descrption,
      required this.image});
}
