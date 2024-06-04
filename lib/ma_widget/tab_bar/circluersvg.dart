import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

GestureDetector  CirclureSvgBtn(String path,VoidCallback action)
{
  return GestureDetector(

    child:                    Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color(0xff0D0D0E),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        'imaegs/icons/dress.svg',
        width: 10,
        height: 11,
        color: Colors.white,
      ),
    ),

  );

}