import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

import '../../ma_widget/tab_bar/appTabBar.dart';
import '../widgets/appbar.dart';
import '../widgets/noti_card.dart';


class NtifictionteHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NtifictionteHome();
  }
}

class _NtifictionteHome extends State<NtifictionteHome> {
  List<Widget> showtypeNotifi = [
    MaMainTab(
      iconPath: 'غـيـر مقرؤة',
      chose: "text",
    ),
    MaMainTab(
      iconPath: 'مـقـرؤة',
      chose: "text",
    ),
    MaMainTab(
      iconPath: 'الــكـل',
      chose: "text",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(title: Text('الاشـعـارات ',style: TextStyle(color: most_color,fontWeight: FontWeight.bold,fontSize: 25),),centerTitle: true,),
                body:
                ListView(
                  children: [


                    FavoriteAppBar(),

// start body
                    SingleChildScrollView(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: body_color,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(defluatPadding * 2),
                                topLeft: Radius.circular(defluatPadding * 2)),
                          ),
                          child: Column(
                            children: [
                             AppTab_Bar(showtypeNotifi,),
                              for(int i=0;i<8;i++)
                                Column(
                                  children: [
                                    NtioCard(),
                                    Divider(color: Bg_backColor,height: 10,thickness: 2,indent: 30,endIndent: 30,),

                                  ],
                                )





                            ],
                          ),
                        ))
                  ],


    )
    );






  }
}

