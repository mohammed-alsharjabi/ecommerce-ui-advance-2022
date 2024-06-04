import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../conset.dart';

class OutBtnCategory extends StatelessWidget {
  const OutBtnCategory({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defluatPadding),
            ),
          ),
          alignment: Alignment.center),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: defaultPadding / 4, horizontal: defaultPadding / 4),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 25,
              height: 25,
              color: most_color,
            ),
            SizedBox(height: defluatPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}

class BtnFre extends StatelessWidget {
  const BtnFre({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 70,
        height: 70,
        padding: EdgeInsets.symmetric(
            horizontal: defluatPadding / 4, vertical: defluatPadding / 4),

        child: GestureDetector(
            onTap: press,
            child: Column(
              children: [
                SvgPicture.asset(
                  icon,
                  height: 25,
                  color: most_color,
                ),
                SizedBox(height: defluatPadding / 2),
                Text(
                  title,
                  style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                )
              ],
            ))
      ,);

  }
}
