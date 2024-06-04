import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:untitled10/checkout_pay/strip_pyment.dart';
import 'package:untitled10/conset.dart';

import '../ma_widget/edit_search.dart';
import '../ma_widget/homebar.dart';
import 'fatoorah/fatorahpay_home.dart';

class UserInformation  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _UserInformation();
  }
}



class _UserInformation extends State<UserInformation>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection: TextDirection.rtl, child:      Scaffold(
      backgroundColor: Colors.white,

      body:SingleChildScrollView(

        physics: BouncingScrollPhysics(),

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

 Container(

   height: MediaQuery.of(context).size.height-60,
  decoration: BoxDecoration(
    color: body_color,
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(defluatPadding * 2),
        topLeft: Radius.circular(defluatPadding * 2)),
  ),
  child: Center(
    child: Column(children: [
      HomeAppBar(titleHead: 'ادخل بيانات المستلم',),

      Container(
        alignment: Alignment.centerRight,

        margin: EdgeInsets.symmetric(
            horizontal: defluatPadding, vertical: defluatPadding),
        child: Text(
          '-->ادخل بيانات المستلم ',
          style: TextStyle(
              fontSize: 20,
              color: most_color,
              fontWeight: FontWeight.bold),
        ),
      ),


      SaerchWidget(
          "ادخل اسمك",
          Icon(
            Icons.person,
            size: 27,
            color: most_color,
          )),

      SaerchWidget(
          "عنوان الشارع",
          Icon(
            Icons.streetview_rounded,
            size: 27,
            color: most_color,
          )),

      SaerchWidget(
          "المدينة",
          Icon(
            Icons.location_city,
            size: 27,
            color: most_color,
          )),

      SaerchWidget(
          "رقم المنزل",
          Icon(
            Icons.add_to_home_screen_outlined,
            size: 27,
            color: most_color,
          )),

      SaerchWidget(
          "ادخل رقمك",
          Icon(
            Icons.phone,
            size: 27,
            color: most_color,
          )),






    ],),


  ),
),

            //buttonn pay
            
         Container(
height: 50,
             margin: EdgeInsets.symmetric(horizontal: defluatPadding/2,vertical: defluatPadding/2),
             padding: EdgeInsets.symmetric(horizontal: defluatPadding/4,vertical: defluatPadding/2),
              alignment: Alignment.center,

              decoration: BoxDecoration(
                border: Border.all(width: 1,color: most_color),
                borderRadius: BorderRadius.circular(25)
              ),
              child: InkWell(
                onTap: ()
                {
                 // MyFatoorahFunctions().ShowPayment(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {

                    return  MyFatoorahListViewPage();
                  }));
                }
                ,
                child: Text('اختار وسيلة دفع',style: TextStyle(fontSize: 18,color: most_color),),
              )
          )

          ],
        )

      )


    )
    );
  }
}