import 'package:flutter/material.dart';

import '../conset.dart';
import 'CardAppBar.dart';
import 'card_item.dart';
import 'card_nav.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CardButtonNavgationBar(),
      body: ListView(
        children: [
          CardAppBar(),
          BodyCard(),
        ],
      ),
    );
  }
}

Directionality BodyCard() {
  return  Directionality(textDirection: TextDirection.rtl, child: Container(

    padding: const EdgeInsets.only(top: 15),
   height: 700,
    decoration: BoxDecoration(
      color: body_color,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35), topRight: Radius.circular(35)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CardItem(),
        ButtonAddToCard(),
      ],
    ),
  )
  );
}



Container ButtonAddToCard() {
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: defluatPadding + 4, horizontal: defluatPadding),
    padding: EdgeInsets.all(defluatPadding - 6),
    child:

    Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: most_color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defluatPadding - 6, vertical: defluatPadding - 6),
          child: Text(
            'ادخل كودالخصم ان وجد',
            style: TextStyle(
                color: most_color, fontWeight: FontWeight.bold, fontSize: 15),

          ),
        )
      ],
    ),
  );
}
