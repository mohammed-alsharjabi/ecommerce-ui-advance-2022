import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../conset.dart';

Padding GetCirculerSize() {
  return Padding(
      padding: EdgeInsets.symmetric(
        vertical: defluatPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'المقاسات:  ',
            style: TextStyle(
              fontSize: 17,
              color: most_color,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              for (int i = 20; i < 45; i += 4)
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: defluatPadding - 11),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ]),
                  child: Text(
                    i.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      color: most_color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ],
          )
        ],
      ));
}

List<Color> colors = [
  Colors.red,
  Colors.black,
  Colors.white38,
  Colors.lightBlue,
  Colors.purpleAccent,
  Colors.yellow,
  Colors.teal,
];

Padding GetColorCirculer() {
  return Padding(
      padding: EdgeInsets.symmetric(
        vertical: defluatPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'الالوان:  ',
            style: TextStyle(
              fontSize: 17,
              color: most_color,
              fontWeight: FontWeight.bold,
            ),
          ),

          //colors row
          Row(
            children: [
              for (int i = 0; i < 7; i += 1)
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: defluatPadding - 11),
                  decoration: BoxDecoration(
                      color: colors[i],
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ]),
                ),
            ],
          )
        ],
      ));
}
