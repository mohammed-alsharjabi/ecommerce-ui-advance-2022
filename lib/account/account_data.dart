import 'package:flutter/material.dart';

class AccountData
{
  final String account_avatar;
  final String account_name;
  final String account_username;
  final String account_date;
  final String account_type;
  final String account_email;
  final String account_passwored;

  AccountData(this.account_passwored, {
    required this.account_avatar,
    required this.account_name,
    required this.account_username,
    required  this.account_date,
    required this.account_type,
    required this.account_email,
  });
}


List<AccountData>demo_userdata=
[
  AccountData('account_passwored', account_avatar: 'imaegs/avatar.png', account_name: 'محمد مصلح الشرجبي', account_username: 'ma_one', account_date: '1998/2/8', account_type: 'ذكــر', account_email: 'aalshrjby412@gmail.com'),
  AccountData('account_passwored', account_avatar: 'الصورة', account_name: 'الاسم', account_username: 'اسم المستخدم', account_date: 'تاريخ الميلاد', account_type: 'النوع', account_email: 'الايميل'),

];

//to use it in list dont,t repeet
List<String>uesr_data=[

  // account data
  demo_userdata[0].account_avatar,
  demo_userdata[0].account_name,
  demo_userdata[0].account_username,
  demo_userdata[0].account_date,
  demo_userdata[0].account_type,
  demo_userdata[0].account_email,

  //title list
  demo_userdata[1].account_avatar,
  demo_userdata[1].account_name,
  demo_userdata[1].account_username,
  demo_userdata[1].account_date,
  demo_userdata[1].account_type,
  demo_userdata[1].account_email,
];