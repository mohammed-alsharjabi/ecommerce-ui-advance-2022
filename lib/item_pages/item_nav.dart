import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

class ItemNav extends StatelessWidget {

  final double pro_price;
  ItemNav({required this.pro_price});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return BottomAppBar(
      child: Container(
        height: 70,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Text(
              '\$'+pro_price.toInt().toString(),
              style: TextStyle(
                  fontSize: 24, color: most_color, fontWeight: FontWeight.bold),
            )),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart_badge_plus),
              label: Text(
                'اضافة  الى السلة',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(most_color),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))
              ),
            )
          ],
        ),
      ),
    );
  }
}
