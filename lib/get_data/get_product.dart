import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

enum users {user_name,password,descrptin,avatar,account_posts,posts}
enum account_url{users,post,information,}


class ImageAssets {
 static String imagPath = "http://http://192.168.28.86:8080/insta_db/account_setting/profile/";
}

var ListSearchReslut=[];


// class get data
class GetProductData
{

  Future  getSearchData()async
  {
    var getResponse= await http.get(Uri.parse("http://192.168.28.86:8080/insta_db/show_all_users.php"));
    var response_body=convert.jsonDecode(getResponse.body);
for(int i=0;i<3;i++)
  {
    ListSearchReslut.add(response_body[i]['user_name']);
  }

  }


  Future  getItemData()async
  {
    // var getResponse= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var getResponse= await http.get(Uri.parse("http://192.168.28.86:8080/insta_db/show_all_users.php"));
  var response_body=convert.jsonDecode(getResponse.body);

return response_body;
  }


  Future  getItemDataUrl(account_url url)async
  {
    var getResponse= await http.get(Uri.parse(url.name.toString()));
    var response_body=convert.jsonDecode(getResponse.body);

    return response_body;
  }
}