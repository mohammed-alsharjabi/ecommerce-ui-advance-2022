import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CirclButton extends GestureDetector
{
final VoidCallback action;
final Widget icon;
final double size;
final bool circluer;
final Color color;
CirclButton({required this.action,required this.size,required this.icon,required this.circluer,required this.color});


@override
  // TODO: implement onTap
  GestureTapCallback? get onTap => action;

@override
  // TODO: implement child
  Widget? get child =>

    Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      padding:
      const EdgeInsets.all(5),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color:circluer==true?color:Colors.transparent,
          borderRadius:
          BorderRadius.circular(size-(size/3)),
          boxShadow:circluer==true? [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2)
                  .withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]:null,),
      child:Center(child:icon ,)

    )



;

}