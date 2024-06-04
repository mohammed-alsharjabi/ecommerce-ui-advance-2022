import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class InternalData{
final String  pro_key;
final Object pro_count;


InternalData({required this.pro_key,required this.pro_count});


 SetInternalDat()
async {
  SharedPreferences preferences=await SharedPreferences.getInstance();
  preferences.setDouble(pro_key  , pro_count as double);




}
}

 class ProductActive
{

  final int pro_id;
 final int pro_bight;
 final int pro_favorit;
 final int pro_count_bight;




 ProductActive({required this.pro_id,required this.pro_bight,required this.pro_favorit,required this.pro_count_bight});

  //
  // SaveProductActive()
  // async {
  //   SharedPreferences preferences=await SharedPreferences.getInstance();
  //   preferences.setDouble( pro_id.toString(),1.2);
  //
  //
  //
  //
  // }


}