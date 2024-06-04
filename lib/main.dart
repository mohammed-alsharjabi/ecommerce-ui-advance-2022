import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:untitled10/pages/homepage.dart';

import 'card_page/card_page.dart';
import 'item_pages/item_min_pag.dart';
import 'ma_widget/cruved_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey='pk_test_51MLxZ9BpQYzNsH6MxUPAYW02ivTBqkymMxhBuLCEWM15eRP7FJD478yhjuj7yWAfFhWkk7JFVWHT4R46u48NgneZ00hgDa1WwD';

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Cairo',
scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),

home: HomePage(),

      routes: {
        "cardPage":(context)=>CardPage(),
      },

    );
  }
}
