import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../conset.dart';
import '../favorite/screan/notihome.dart';

class HomeAppBar extends StatefulWidget {
  final String titleHead;
  HomeAppBar({required this.titleHead});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeAppBar(titleHead: titleHead);
  }
}

class _HomeAppBar extends State<HomeAppBar> {
  final String titleHead;
  _HomeAppBar({required this.titleHead});
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      number_product_sales;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(vertical: defluatPadding),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Badge(
            badgeColor: Colors.redAccent,
            padding: EdgeInsets.all(4),
            badgeContent: Text(
              number_product_sales.toInt().toString(),
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cardPage');
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: most_color,
                size: 35,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              titleHead,
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NtifictionteHome();
              }));
            },
            icon: Icon(Icons.favorite_border, color: most_color, size: 30),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
