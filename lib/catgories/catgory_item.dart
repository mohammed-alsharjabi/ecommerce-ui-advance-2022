import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/item_card/item_car.dart';
import '../conset.dart';
import '../conset/conset_image.dart';
import '../ma_widget/ads_card.dart';
import '../ma_widget/edit_search.dart';
import '../ma_widget/tab_bar/appTabBar.dart';
import '../ma_widget/tab_control/homeTab.dart';
import '../row_card/item_row_card_screan.dart';

Product p=Product(image: "imaegs/4.png",price: 15,descrption: "يي",id: 1,title: "متجر العزاني",subtitle: "العنوان صنعاء-شارع السبعبن");
Product p2=Product(image: "imaegs/4.png",price: 15,descrption: "يي",id: 1,title: "حقائب الاميرة الساحلي",subtitle: "العنوان عدن-شارع الغيظة");

// main Row product detials

class CatgoryItem extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _CatgoryItem();

  }
}


class _CatgoryItem extends State<CatgoryItem>
{


  List<Widget> ItemCatgoris=[

    // MaMainTab(iconPath: 'imaegs/icons/dress.svg',chose: "text",),
    // MaMainTab(iconPath: 'imaegs/icons/pants.svg',chose: "text",),
    // MaMainTab(iconPath: 'imaegs/icons/shirt.svg',chose: "text",),
    // MaMainTab(iconPath: 'imaegs/icons/Tshirt.svg',chose: "text",),

    // MaMainTab(iconPath: 'ديور',chose: "text",),
    MaMainTab(iconPath: 'شنايل',chose: "text",),
    MaMainTab(iconPath: 'فاندي',chose: "text",),
    MaMainTab(iconPath: 'الافظل',chose: "text",),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(


         backgroundColor: Colors.white,
       body: Container(
         margin: EdgeInsets.all(0),
         padding: EdgeInsets.all(0),
         decoration: BoxDecoration(
         color: body_color,
         borderRadius: BorderRadius.only(
         topRight: Radius.circular(defluatPadding * 2),
    topLeft: Radius.circular(defluatPadding * 2)),
    ),

         child:SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
             children: [
               SizedBox(height: 40,),
               SaerchWidget('ابحث عن طلبك',Icon(Icons.camera_alt_outlined,color: most_color,)),


               // show new ads offers
               Container(
                   height: 170.0,
                   margin: EdgeInsets.symmetric(vertical: 0),
                   child:Carousel(

                     images: [

                       AdsCard(crd_ads_image: imageAsset[6].image_path,crd_ads_details:" تخفيضات تصل الى %54   "
                         ,crd_ads_btnTile: 'Adds',),

                       ProcductCard(itemIndex: 1,product: p,color: Colors.amber,),
                       ProcductCard(itemIndex: 1,product: p,color: Colors.tealAccent,),

                       AdsCard(crd_ads_image: imageAsset[2].image_path,crd_ads_details:" تخفيضات تصل الى %54 كلما عليك زيارة الموقع وتسجبل الدخول"
                         ,crd_ads_btnTile: 'تسوق الان',),


                     ],


                     dotSize: 5,
                     dotIncreaseSize: 2,
                     dotSpacing: 12,
                     dotColor: most_color,
                     dotBgColor: Colors.transparent,
                     dotIncreasedColor:Colors.white,
                     showIndicator: true,
                     indicatorBgPadding: 0,
                     boxFit: BoxFit.cover,
                     overlayShadowColors: Colors.teal,
                     overlayShadowSize: 0.7,
                   )),



               AppTab_Bar(ItemCatgoris),

               TabViewHome(),


             ],
           ),

         )





         )



     );
  }
}