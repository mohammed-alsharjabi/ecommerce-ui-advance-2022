import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled10/conset/conset_image.dart';

import '../conset.dart';
import '../ma_widget/increment_container.dart';
import 'account_setting/acount_screan_setting.dart';
import 'freight/freight_home.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class AccountHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AccountHome();
  }
}

class _AccountHome extends State<AccountHome> {


  var ListSearch=[];

  Future  getSearchData()async
  {
    var getResponse= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    // var getResponse= await http.get(Uri.parse("http://localhost:8080/insta_db/show_all_users.php"));
    var response_body=jsonDecode(getResponse.body);
    // for(int i=0;i<5;i++)
    // {
    //   ListSearch.add(response_body[i]['user_name']);
    // }
return response_body;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSearchData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Bg_backColor,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: ListView(
              children: [

                SizedBox(
                  height: 20,
                ),

                // start header
                Container(
                    margin: EdgeInsets.symmetric(
                        vertical: defluatPadding / 16,
                        horizontal: defluatPadding),
                    padding: EdgeInsets.all(2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: defluatPadding / 2),
                          width: 80,
                          height: 80,
                          child: GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundImage: AssetImage('imaegs/55.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          'محمد الشرجبي',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: most_color,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),

                //start freight information
                Freight(),

                //start body
                Container(
                 // height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: body_color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(defluatPadding * 0),
                        topLeft: Radius.circular(defluatPadding * 0)),
                  ),
                  child: Column(
                    children: [
                      // start row setting items button

                      ItemAccountSetting('اعدادات الحساب',Icons.settings,(){


                        Navigator.of(context).push(MaterialPageRoute(builder: (context)
                        {
                          return AcoountSettingScrean();

                        }));

                      }),
                      ItemAccountSetting('اعدادات الاشعارات',Icons.notifications,(){}),
                      ItemAccountSetting('المحفوضات',Icons.collections_rounded,(){}),
                      ItemAccountSetting('سياسية الخصم',Icons.discount,(){}),
                      ItemAccountSetting('اتصل بنا',Icons.call,(){}),
                      ItemAccountSetting('قيم التطبيق',Icons.star_rate,(){}),
                      ItemAccountSetting('سياسية الخصوصية',Icons.privacy_tip,(){}),
                      ItemAccountSetting('الاصدارات',Icons.emoji_emotions,(){}),

                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Container ItemAccountSetting(String title_setting,IconData icon_setting,VoidCallback action_item)
{
  return Container(
      margin: EdgeInsets.symmetric(
          horizontal: defluatPadding, vertical: defluatPadding),
      padding: EdgeInsets.all(4),
      child: GestureDetector(
        onTap: action_item,
        child: Row(
          children: [
            SizedBox(width: 10,),
            Icon(
              icon_setting,
              size: 29,
              color: most_color,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title_setting,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: most_color),
            )
          ],
        ),
      ));
}
