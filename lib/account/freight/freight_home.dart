import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

import '../../ma_widget/outline_btn.dart';

class Freight extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

        margin: EdgeInsets.symmetric(horizontal: defluatPadding/2,vertical: defluatPadding/8),
        padding: EdgeInsets.symmetric(horizontal: defluatPadding/4,vertical: defluatPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: most_color.withOpacity(0.3),),
        borderRadius: BorderRadius.circular(defluatPadding*2)
      ),

      child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
       scrollDirection: Axis.horizontal,
       child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [

         BtnFre(title: 'العروض',icon: 'imaegs/icons/Filter.svg',press: (){},),
         SizedBox(width: 20,),
         BtnFre(title: 'الشحن',icon: 'imaegs/icons/Location.svg',press: (){},),
           SizedBox(width: 20,),
           BtnFre(title: 'مشحون',icon: 'imaegs/icons/Notification.svg',press: (){},),
           SizedBox(width: 20,),
           BtnFre(title: 'قيد الانتظار',icon: 'imaegs/icons/menu.svg',press: (){},),


      ],),
      )
    );
  }
}