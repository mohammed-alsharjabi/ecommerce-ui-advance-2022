import 'package:flutter/material.dart';

class ImageAsset
{
  static const  ImageRoot="imaegs/";
  final String image_path;
ImageAsset({required this.image_path});

}


List<ImageAsset>imageAsset=[

  ImageAsset(image_path:ImageAsset.ImageRoot+"1.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"2.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"3.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"4.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"5.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"6.png" ),
  ImageAsset(image_path:ImageAsset.ImageRoot+"7.png" ),
];

 class   ImageAssts
{
  static const  root="imaegs/";
  static const  subroot="cat_test/";

  static String bag(String path)
  {
    return root+subroot+"bag/"+path;
  }

  static String shose(String path)
  {
    return root+subroot+"shose/"+path;
  }

  static String cap(String path)
  {
    return root+subroot+"cap/"+path;
  }

  static String ring(String path)
  {
    return root+subroot+"ring/"+path;
  }

}