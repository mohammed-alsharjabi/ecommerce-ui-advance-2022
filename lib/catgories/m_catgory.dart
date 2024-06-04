import 'package:flutter/material.dart';

import '../conset.dart';
import 'catgory_item.dart';
import 'data/allcategories_data.dart';


//to show  main catgories mean show tab bar in main bage

class Catgrories extends StatelessWidget {

  List<Catgoriesdata>catgoris_list=[
    Catgoriesdata(title: 'ملابس',icon: 'imaegs/1.png'),
    Catgoriesdata(title: 'ولادي',icon: 'imaegs/2.png'),
    Catgoriesdata(title: 'بناتي',icon: 'imaegs/4.png'),
    Catgoriesdata(title: 'شوزات',icon: 'imaegs/6.png'),
    Catgoriesdata(title: 'ساعات',icon: 'imaegs/1.png'),
    Catgoriesdata(title: 'حقائب',icon: 'imaegs/4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=0;i<catgoris_list.length;i++)
            GestureDetector(
              child:   Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      catgoris_list[i].icon,
                      width: 35,
                      height: 35,
                    ),
                    Text(
                      catgoris_list[i].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: most_color)
                      ,
                    ),
                  ],
                ),
              ),
              
              
              onTap: (){
                
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CatgoryItem()));
              },

            )
        ],
      ),
    );
  }
}

