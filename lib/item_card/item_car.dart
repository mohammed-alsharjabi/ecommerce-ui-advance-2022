import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/item_pages/item_min_pag.dart';

import '../conset.dart';
import '../get_data/data_test/test_product.dart';
import '../get_data/get_product.dart';

// this class show our product
// int i=0;

class ItemCard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemCard();
  }
}

class _ItemCard extends State<ItemCard> {



  Icon  fullHeart=Icon(Icons.favorite_border,color: Colors.red,);
  Icon emptyHeart=Icon(Icons.favorite,color: Colors.red,);
  int falge=120;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 0.70,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < item_product_list.length; i++)
          FutureBuilder(
              future: GetProductData().getItemData(),
              builder: (BuildContext context, AsyncSnapshot snapchat) {

                  //start mian  card
                  return Container(
                    padding: EdgeInsets.only(left: 25, top: 10, right: 15),
                    margin: EdgeInsets.symmetric(
                        vertical: defluatPadding / 2,
                        horizontal: defluatPadding - 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // discount widget
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: most_color,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Text(
                                '-'+item_product_list[i].pro_item_discount.toInt().toString()+"%",
                                style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            //favorite button
                           GestureDetector(
                             child:falge==i ?emptyHeart:fullHeart,
                             onTap: (){

                               setState(() {

                               falge=i;

                               });
                             },
                           )
                          ],
                        ),


                        //  show product item or product images
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return ItemMinPage(
                                  pro_item_image:  item_product_list[i].pro_item_image,
                                  pro_item_title:   item_product_list[i].pro_item_title,
                                  pro_item_details:   item_product_list[i].pro_item_descrption,
                                  pro_item_size:   item_product_list[i].pro_item_discount.toInt().toString(),
                                  pro_item_price:  item_product_list[i].pro_item_price,
                                  pro_item_avalible:"متوفر"
                              );
                            }));

                            
                          },

                          //product image
                          child: Container(
                            child: Image.asset(
                              item_product_list[i].pro_item_image,
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),


                        //product title
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(bottom: defluatPadding / 4),
                          child: Text(
                            item_product_list[i].pro_item_title,
                            style: TextStyle(
                                fontSize: 14,
                                color: most_color,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        //prodouct descrption
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            item_product_list[i].pro_item_descrption,
                            style: TextStyle(
                                fontSize: 14,
                                color: most_color,
                                fontWeight: FontWeight.normal),
                          ),
                        ),

                        //prodect price
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: defluatPadding /2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$' +
                                    item_product_list[i]
                                        .pro_item_price
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 13,
                                    color: most_color,
                                    fontWeight: FontWeight.normal),
                              ),

                              TextButton(
                                style:TextButton.styleFrom(alignment: Alignment.center,padding: EdgeInsets.all(0)
                                , ) ,
                                onPressed: (){
                                  calcultor_sales();

    //                               Navigator.of(context).push(MaterialPageRoute(builder: (context){
    //   return HomeAppBar();
    //
    // }));


                                   //InternalData(pro_key:item_product_list[i].pro_item_title ,pro_count: 1).SetInternalDat();



                                },
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: most_color,
                                  size: 20,
                                )
                                ,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                //else
                  //return CircularProgressIndicator();
              })
      ],
    );
  }
}
