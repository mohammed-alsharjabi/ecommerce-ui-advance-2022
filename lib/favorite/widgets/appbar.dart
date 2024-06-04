import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';
import 'package:untitled10/ma_widget/cruved_nav.dart';
import 'package:untitled10/ma_widget/outline_btn.dart';

class FavoriteAppBar extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Container(

      margin: EdgeInsets.symmetric(vertical: defluatPadding*2),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          BtnColumn(title: 'اوامر الشراء',icon: Icons.monetization_on_outlined,action: (){}),
          BtnColumn(title: 'العروض التروجية',icon: Icons.discount_outlined,action: (){}),
          BtnColumn(title: 'اخرى',icon: Icons.notifications_none,action: (){}),


        ],),
    );
  }
}


FlatButton BtnColumn({required String title,required IconData icon,required VoidCallback action})
{

  return FlatButton(onPressed:action , child:
  Container(
    color: Colors.transparent,
    padding: EdgeInsets.all(4),
    margin: EdgeInsets.all(4),
    alignment: Alignment.center,

    child:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 21,),
        SizedBox(height: 10,),
        Text(title,style: TextStyle(color:most_color,fontSize: 13 ,fontWeight: FontWeight.bold),)
      ],
    ) ,


  )

  );
}


FlatButton BtnColumn2({required String title,required IconData icon,required VoidCallback action})

{
  return FlatButton(onPressed: action, child:
    Container(
  color: Colors.transparent,
    padding: EdgeInsets.all(4),
    margin: EdgeInsets.all(4),
    alignment: Alignment.center,
    child: ListTile(
      title: Icon(icon),
      subtitle:Text(title,style: TextStyle(color:most_color,fontSize: 18 ),)

    ),

    )
  );

}
