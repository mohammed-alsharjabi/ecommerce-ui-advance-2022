import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled10/conset.dart';

//frist appBar RowAppBar
Directionality HomAppBar() {
  Color apBarColor = Colors.black;
  return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(top: 0, bottom: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5, left: 10),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/product_0.png'),
                    ),
                  ),
                  Text(
                    'مـحمـد الـشـرجـبي',
                    style: TextStyle(
                        color: apBarColor,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_outlined,
                        color: apBarColor,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: apBarColor,
                      )),
                ],
              ),
            ],
          )));
}



List<Widget> MaTab = [
  MaMainTab(
    iconPath: 'assets/icons/Filter.svg',
    chose: "txt",
  ),
  MaMainTab(
    iconPath: 'assets/icons/Heart.svg',
    chose: "txt",
  ),
  MaMainTab(
    iconPath: 'assets/icons/Notification.svg',
    chose: "txt",
  ),
];

// secound appBar TabBar
// returen list view tab bar
DefaultTabController AppTab_Bar(List<Widget> list) {
  return DefaultTabController(
      length: list.length,
      child: TabBar(
        indicatorColor: most_color,
        indicatorWeight: 2,
        padding: EdgeInsets.symmetric(horizontal: defluatPadding),physics: BouncingScrollPhysics(),
        tabs: list,

      ));
}



// this help class to get tab bar
class MaMainTab extends StatelessWidget {
  final String iconPath;
  final String chose;

  MaMainTab({Key? key, required this.iconPath, required this.chose})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Tab(
      height: 50,
      child: chose == "image"
          ? Container(
              child: SvgPicture.asset(
                iconPath,
                color: Colors.grey[600],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                // border: Border.all(width: 1,)
              ),
              child: Text(
                iconPath,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
