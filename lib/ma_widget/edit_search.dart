
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../conset.dart';

class SaerchWidget extends StatelessWidget
{

  final String hintText;
  final Icon _icons;

  SaerchWidget(this.hintText, this._icons);
  // SaerchWidget({required this.hintText,required this._icons});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Container(
      padding: EdgeInsets.symmetric(horizontal: defluatPadding),
      margin: EdgeInsets.symmetric(horizontal: defluatPadding,vertical: defluatPadding/2),
      height: 50,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defluatPadding),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [




          _icons,
          Spacer(),
          Container(
          width: 100,
            height: 50,
            child: TextFormField(
              textDirection: TextDirection.rtl,
textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
hintTextDirection: TextDirection.rtl,

              ),
            ),
          ),


        ],
      ),


    );
  }
}
