import 'package:flutter/material.dart';

import '../conset.dart';




class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: most_color,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(),
            child: Text(
              'الرئسية',
              style: TextStyle(
                  color: most_color, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
