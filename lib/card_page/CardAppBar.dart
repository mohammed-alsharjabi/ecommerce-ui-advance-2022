import 'package:flutter/material.dart';

import '../conset.dart';

class CardAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return      Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(25),
        child: Row(
          children: [

            FlatButton(onPressed: (){
              AlertDialog(content: Text(''),);

            }, child:Icon(Icons.delete,color: most_color,),
            ),
            Spacer(),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'السلة',
                style: TextStyle(
                    fontSize: 23, fontWeight: FontWeight.bold, color: most_color),
              ),
            ),
            InkWell(
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: most_color,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      )

    ;

  }
}
