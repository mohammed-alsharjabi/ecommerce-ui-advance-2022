import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../conset.dart';
import '../controler/opertion.dart';
import '../get_data/get_product.dart';
import '../ma_widget/increment_container.dart';
import '../ma_widget/size_colors_chose.dart';
import 'item_appbar.dart';
import 'item_nav.dart';

// this page show product detials

class ItemMinPage extends StatefulWidget {
  final String pro_item_image;
  final String pro_item_title;
  final String pro_item_details;
  final String pro_item_size;
  final double pro_item_price;
  final String pro_item_avalible;

  ItemMinPage({required this.pro_item_image,required this.pro_item_title,required this.pro_item_details,required this.pro_item_size,required this.pro_item_price,required this.pro_item_avalible});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemMinPage(pro_item_image: pro_item_image, pro_item_title: pro_item_title, pro_item_details: pro_item_details, pro_item_size: pro_item_size, pro_item_price: pro_item_price, pro_item_avalible: pro_item_avalible);
  }
}


class _ItemMinPage extends State<ItemMinPage> {
   String pro_item_image;
  final String pro_item_title;
  final String pro_item_details;
  final String pro_item_size;
  final double pro_item_price;
  final String pro_item_avalible;

  _ItemMinPage({required this.pro_item_image,required this.pro_item_title,required this.pro_item_details,required this.pro_item_size,required this.pro_item_price,required this.pro_item_avalible});


  //conset parmeter

  List<String>testImage=
  [
    'imaegs/1.png',
    'imaegs/2.png',
    'imaegs/3.png',
    'imaegs/4.png',
    'imaegs/5.png',
    'imaegs/6.png',
    'imaegs/7.png',

  ];
  int currect = 0;
   double count_product=1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child:
        Scaffold(
          backgroundColor: body_color,
          body:

        ListView(
                  children: [
                    ItemAppBar(),

                    //product iamge
                    AnimatedContainer(

                      duration: Duration(milliseconds: 100),
                      child: Padding(
                        padding: EdgeInsets.all(defluatPadding),
                        child: Image.asset(pro_item_image),

                        // child: Image.asset("imaegs/5.png"),
                      ),

                    ),

                    // product item body
                    Arc(
                        height: 45,
                        edge: Edge.TOP,
                        arcType: ArcType.CONVEY,
                        child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [


                                //----------------product title--------------------
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 55, bottom: 10, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                       pro_item_title,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: most_color,
                                        ),
                                      ),
                                      Text(
                                        pro_item_avalible,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ],
                                  ),
                                ),


                                //------------product  rating  container and + , - actions--------
                                Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //satrt rating
                                      RatingBar.builder(
                                        // function fill cmenu
                                        itemBuilder: (context, i) {
                                          return Icon(
                                            Icons.star_rate,
                                            color: Colors.orangeAccent,
                                          );
                                        },
                                        onRatingUpdate: (im) {},
                                        itemCount: 5,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemSize: 20,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                      ),

                                      // Container + or - product action
                                      Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            children: [

                                              CirclButton(action:(){
                                                setState(() {
                                                  count_product=  Opertion.Increment(count_product);
                                                });
                                              },
                                              size: 30,
                                                icon: Icon(Icons.add,size: 19,),
                                                color: Bg_backColor,
                                                circluer: true,
                                              ),


                                              //show count product need
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 0,
                                                        blurRadius: 0,
                                                        offset: Offset(0, 0),
                                                      )
                                                    ]),
                                                child: Text(
                                                  count_product.toInt().toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17,
                                                      color: most_color),
                                                ),
                                              ),


                                              //decrease button
                                              CirclButton(action:(){
                                                setState(() {
                                                  count_product=  Opertion.Decrease(count_product);
                                                });
                                              },
                                                size: 30,
                                                icon: Icon(Icons.minimize_rounded,size: 19,),
                                                color: Bg_backColor,
                                                circluer: true,
                                              ),

                                            ],
                                          )),
                                    ],
                                  ),
                                ),



                                //show color product
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  child:     Row(

                                    children: [
                                      for(int i=0;i<testImage.length;i++)
                                        GestureDetector(

                                          onTap: (){
                                            setState(() {
                                              pro_item_image=testImage[i];
                                         currect=i;
                                            });

                                          },

                                          child: AnimatedContainer(

                                            duration: const Duration(milliseconds: 500),
                                            padding:  EdgeInsets.all(defluatPadding/2),
                                            margin:EdgeInsets.symmetric(horizontal: defluatPadding/4),
                                            width: 90,
                                            height: 90,
                                            alignment: Alignment.center,
                                            decoration:  BoxDecoration(
                                              color: Colors.blueGrey.withOpacity(0.5),
                                              border:currect==i  ?Border.all(width: 2,color:most_color)
                                              :Border.all(width: 0,color: Colors.transparent),
                                              borderRadius: BorderRadius.all(Radius.circular(22)),
                                            ),

                                            child: Center(
                                              child: Image.asset(testImage[i]),

                                            ),

                                          ),


                                        ),

                                    ],


                                  ),

                                ),

                                // --------------------product  descrption -------------------
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: defluatPadding - 7),
                                    child: Text(pro_item_details)
                                ),

                                //   product size
                                GetCirculerSize(),
                                //product color
                                GetColorCirculer(),
                              ],
                            ))),
                  ],
                ),

          bottomNavigationBar: ItemNav(pro_price:Opertion.mul(pro_item_price, count_product),),
        ));
  } // biulding function

} // end  class
