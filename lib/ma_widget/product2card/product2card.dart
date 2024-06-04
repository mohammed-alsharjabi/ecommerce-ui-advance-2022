import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

import '../../get_data/product_data.dart';

class Product2Card extends StatelessWidget {
  const Product2Card(
      {Key? key,
      required this.press,
      required this.bgColor,
      required this.product_item})
      : super(key: key);

  final VoidCallback press;
  final Color bgColor;
  final ProductCardData product_item;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: GestureDetector(
          onTap: press,
          child: Container(

            padding: EdgeInsets.all(defaultPadding / 4),
            margin: EdgeInsets.symmetric(
                horizontal: defaultPadding/3, vertical: defaultPadding/4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(defluatPadding)),
            ),
            child: Column(
              children: [


                // image
Expanded(
  flex: 5,

  child: Container(

  decoration: BoxDecoration(
    color: bgColor,
    borderRadius:
    BorderRadius.all(Radius.circular(defluatPadding)),
  ),
  child:Expanded(child:  Image.asset(
    product_item.pro_item_image,
    width: double.infinity,
  ),
      )
),
),

                //price
Expanded(flex: 1,child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  Expanded(
    flex: 2,
    child: Container(

      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.9),
          borderRadius: BorderRadius.circular(7)),
      child: Text(
        "AU \$" + product_item.pro_item_price.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 12
        ),
      ),
    ),
  ),
  Expanded(
    flex: 1,
    child: Container(
      child: Text(

        "AU \$" + product_item.pro_item_discount.toString(),

        style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),
      ),
    ),
  )
]),
),
                //bottom
                Expanded(flex: 0,child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      product_item.pro_item_title,
                      style: TextStyle(color: most_color),
                    ),
                    Icon(
                      Icons.directions_bus_filled_outlined,
                      color:most_color,
                    )
                  ],
                ),
                )
              ],
            ),
          ),
        ));
  }
}
