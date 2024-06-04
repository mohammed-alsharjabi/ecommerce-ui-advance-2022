import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';

import '../checkout_pay/strip_pyment.dart';
import '../checkout_pay/user_information.dart';

class CardButtonNavgationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: defluatPadding - 1, horizontal: defluatPadding + 4),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //show total price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  '\$1230',
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),

                Text(
                  ': المجموع',
                  style: TextStyle(
                      color: most_color,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),

              ],
            ),


            //button check out
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: most_color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                child:Text(
                  'اتمام الدفع',
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ) ,
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {

                      return  UserInformation();
                    }));
                  },
              )

            )
          ],
        ),
      ),
    );
  }
}
