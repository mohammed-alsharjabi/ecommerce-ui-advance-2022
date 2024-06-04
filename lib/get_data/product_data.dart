import 'package:flutter/material.dart';

import '../conset/conset_image.dart';



class ProductCardData {
  final int pro_id;
  final String pro_item_title;
  final String pro_item_image;
  final double pro_item_price;
  final String pro_item_descrption;
  final double pro_item_discount;

  ProductCardData(

      { required this.pro_id, required this.pro_item_image,
        required this.pro_item_title,
        required this.pro_item_price,
        required this.pro_item_descrption,
        required this.pro_item_discount});
}

List<String>DemoTitle=
[
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'الشحن مجانا',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',
  'dasdadass',

];

List<ProductCardData>  BageDemo()
{
   
  return [
    for(int i=0;i<9;i++)
    ProductCardData(pro_id: i, pro_item_image:ImageAssts.bag('bag_$i') ,
        pro_item_title: DemoTitle[i], pro_item_price: i*2, pro_item_descrption: DemoTitle[i],
        pro_item_discount: 40)
  ];

}
