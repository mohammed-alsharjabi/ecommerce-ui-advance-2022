import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../../conset.dart';



class AllCategriesServerData
{

  Future  getCategoris(String url_page)async
  {
    var getResponse= await http.get(Uri.parse(MainUrl+url_page));
    var response_body=convert.jsonDecode(getResponse.body);


    // return response_body;
    print(response_body);
  }

}