import 'package:flutter/material.dart';


class AllCategriesData
{
  bool status=false;
  String msg="";
  Catgoriesdata _categori_item;

  Catgoriesdata get categori_item => _categori_item;

  set categori_item(Catgoriesdata value) {
    _categori_item = value;
  }

  AllCategriesData( this._categori_item);
}







class Catgoriesdata
{
  final String title;
  final String icon;
  Catgoriesdata({required this.title,required this.icon});

}