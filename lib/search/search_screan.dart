import 'dart:ui';

import 'package:flutter/material.dart';

import '../conset.dart';
import '../get_data/get_product.dart';


class SearchHome extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _SearchHome();
  }
}

class _SearchHome extends State<SearchHome>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        margin: EdgeInsets.symmetric(horizontal:defaultPadding,vertical: defaultPadding*2),
        padding: EdgeInsets.symmetric(horizontal:defaultPadding,vertical: defaultPadding*2),

        child:
            PageView(
            physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset('imaegs/1.png',),
                Image.asset('imaegs/2.png'),
                Image.asset('imaegs/3.png'),

              ],

            )




      ),
    );
  }
}



class SearchData extends SearchDelegate<String>
{
  List<dynamic> serchitems;
SearchData({required this.serchitems});
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    // action appBar
   return [
   TextButton(onPressed: (){}, child: Icon(Icons.clear,color: most_color,))
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    //Icon Leading

   return    TextButton(onPressed: (){close(context, '');}, child: Icon(Icons.arrow_back,color: most_color,));

  }

  @override
  Widget buildResults(BuildContext context) {
    // buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return  ListView.builder(
        itemCount: serchitems.length,
        itemBuilder: (context, i) {
     return Text(serchitems[i]);
    });
  }


}




Container RowerItem({required String title,required Widget obj,required VoidCallback action_item})
{
  return Container(
      margin: EdgeInsets.symmetric(
          horizontal: defluatPadding, vertical: defluatPadding),
      padding: EdgeInsets.all(4),
      child: GestureDetector(
        onTap: action_item,
        child: Row(
          children: [
            SizedBox(width: 10,),
            obj,
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: most_color),
            )
          ],
        ),
      ));
}
