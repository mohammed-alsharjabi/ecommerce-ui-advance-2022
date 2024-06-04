
import 'package:flutter/material.dart';

import '../conset.dart';
import '../controler/opertion.dart';
import '../ma_widget/increment_container.dart';
int rd_play=1;
int hrd_play=0;

class CardItem  extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardItem();
  }
}

class _CardItem extends State<CardItem> {

  double count_product=12;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: [
        for(int i=1;i<5;i++)
          Container(
            padding: EdgeInsets.all(defluatPadding/4),
            margin: EdgeInsets.symmetric(
                horizontal: defluatPadding, vertical: defluatPadding / 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

              TextButton(onPressed: ()
              {
              setState(() {

                if(rd_play==1)
                {
                  rd_play=0;
                }
                else if(rd_play==0) {
                  rd_play=1;

                }
              });

                },

                child: Radio(
                value:rd_play==1?1:0,
                groupValue: rd_play==1?1:2,
                onChanged: (co) {},
                activeColor: most_color,
                toggleable: false,
              ),
              ),
                //image
              Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    'imaegs/$i.png',
                  ),
                ),

               //title
                  Padding(
                  padding: EdgeInsets.symmetric(vertical: defluatPadding - 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ساعة رجالية ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: most_color),
                      ),
                      Text(
                        'ساعة رجالية ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: most_color),
                      ),
                    ],
                  ),
                ),


       Padding(
                    padding: EdgeInsets.symmetric(vertical: defluatPadding - 11),
                    child: Column(


                      children: [
                        // Icon(
                        //   Icons.delete,
                        //   color: Colors.redAccent,
                        //   size: 22,
                        // ),

                        //------------product  rating  container and + , - actions--------
                        Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 7),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,

                            children: [

                              // Container + or - product action
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defluatPadding/4),
                                  child: Row(
                                    children: [

                                      CirclButton(action:(){
                                        setState(() {
                                          count_product=  Opertion.Increment(count_product) ;
                                        });
                                      },
                                        size: 24,
                                        icon: Icon(Icons.plus_one,size: 15,),
                                        circluer: true,
                                        color: Colors.white,
                                      ),


                                      //show count product need
                                      Container(
                                        margin:
                                        const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 0,
                                                offset: Offset(0, 0),
                                              )
                                            ]),
                                        child: Text(
                                          count_product.toInt().toString(),
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.normal,
                                              fontSize: 14,
                                              color: most_color),
                                        ),
                                      ),


                                      //decrease button
                                      CirclButton(action:(){
                                        setState(() {
                                          count_product=  Opertion.Decrease(count_product);
                                        });
                                      },
                                        size: 24,
                                        icon: Icon(Icons.exposure_minus_1_sharp,size: 15,),
                                        circluer: true,
                                        color: Colors.white,
                                      ),

                                    ],
                                  )),
                            ],
                          ),
                        ),

                      ],
                    ),
                )
              ],
            ),

          ),

      ],

    );

  }
}
