import 'package:flutter/material.dart';

import '../../conset.dart';
import '../account_data.dart';

class AcoountSettingScrean extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AcoountSettingScrean();
  }
}

class _AcoountSettingScrean extends State<AcoountSettingScrean> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Bg_backColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: most_color,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Bg_backColor,
        title: Text(
          'اعدادت الحساب',
          style: TextStyle(
              fontSize: 16, color: most_color, fontWeight: FontWeight.bold),
        ),
      ),

      // start body
      body:SingleChildScrollView(child:
      Container(
        margin: EdgeInsets.symmetric(
            horizontal: defluatPadding/16, vertical: defluatPadding * 3),
        padding: EdgeInsets.symmetric(
            vertical: defluatPadding, horizontal: defluatPadding),
        decoration: BoxDecoration(
            color: body_color,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(defluatPadding*4), topLeft: Radius.circular(defluatPadding*4))),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,


        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context,i)
            {
              return  Column(children: [
                TextButton(child:i==0?
                //show avatar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 15),
                      child: CircleAvatar(
                        minRadius: 35,
                        backgroundImage: AssetImage(
                          uesr_data[0],
                        ),
                      ),
                    ),
                  ],
                ):
                AccountData(name: uesr_data[i], type: uesr_data[i+6]),

                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return

                            AlertDialog(
                              title: Text("تعديل "+uesr_data[i+6],
                                textAlign: TextAlign.center,
                              ),
                              content: OutPutTextFromFeld(//text fromfieled
                                  width: MediaQuery.of(context).size.width,
                                  heght: 45,
                                  color: most_color,
                                  hinTxt: uesr_data[i] ),
                              actions: [
                                BtnWithFillFalt(bg_color: most_color,press: (){},size: 120,widget: TextCenter(color: Bg_backColor,fontsize: 12,txt: 'تعديل')),
                                BtnWithFillFalt(bg_color: most_color,press: (){Navigator.pop(context);},size: 120,widget: TextCenter(color: Bg_backColor,fontsize: 12,txt: 'الغاء')),

                              ],
                            );
                        } //end function builder

                    ); //end showdeliog
                  }, //en
                ),
                Divider(),

              ],
              );

            })

      ),
      )
    );
  }
}


Row AccountData({required String name, required String type}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: most_color.withOpacity(0.7)),
          ),
      Text(
            type,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: most_color),
          ),
    ],
  );
}



Container OutPutTextFromFeld(
    {

      required double width,
    required double heght,
    required String hinTxt,
    required Color color}) {
  return Container(
    width: width,
    alignment: Alignment.center,
    height: heght,
    child: TextFormField(
      textDirection: TextDirection.rtl,
      cursorHeight: 10,
      cursorColor: most_color,
      scrollPhysics: BouncingScrollPhysics(),
      decoration: InputDecoration(
        hintText: hinTxt,
          hintTextDirection:TextDirection.rtl ,

          contentPadding: EdgeInsets.symmetric(horizontal: defluatPadding/2),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  BorderSide(color: color.withOpacity(0.3), width: 1)),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: color, width: 1))),
    ),
  );
}



FlatButton BtnWithFillFalt({required double size,required Widget widget,required Color bg_color,required VoidCallback press} )
{

  return   FlatButton(
      onPressed: press,
      child: Container(
        width: size,
        height: size/4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bg_color),
        child:widget,

        padding: EdgeInsets.symmetric(
            horizontal: defluatPadding / 2),
      ))
  ;
}



Container  TextCenter({required String txt,required Color color ,required double fontsize})
{
  return  Container(

    child: Center(
      child: Text(txt,textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: fontsize),
    ),
  )
  );

}