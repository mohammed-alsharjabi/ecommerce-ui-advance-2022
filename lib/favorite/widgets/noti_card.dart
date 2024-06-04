import 'package:flutter/material.dart';
import 'package:untitled10/conset.dart';
import 'package:untitled10/conset/conset_image.dart';

class NtioCard extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NtioCard();
  }
}

class _NtioCard extends State<NtioCard>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: EdgeInsets.all(8),
    child: Container(
alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: defluatPadding),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text('9:45AM',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
          Column(children:  [

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'الشاشة ',
                    style: TextStyle(
                        color:Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'super andeeoid .5 120HZ ',
                    style: TextStyle(
                        color: most_color.withOpacity(0.5),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Gutch ',
                    style: TextStyle(
                        color:Colors.purple,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'super andeeoid ',
                    style: TextStyle(
                        color: most_color.withOpacity(0.5),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

          ],),



          Container(
            decoration: BoxDecoration(
                color: most_color,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset('imaegs/55.jpg',width: 100,height: 100,fit: BoxFit.cover),

          ),

        ],
      ),
    ),

    );
  }
}