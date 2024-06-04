import 'package:flutter/material.dart';

import '../../conset.dart';
import '../../ma_widget/ads_card.dart';
import '../../ma_widget/tab_bar/circluersvg.dart';

class NotiCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  NotiCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter:         ColorFilter.mode(
         most_color.withOpacity(0.9),
            BlendMode.multiply,
          ),
         alignment: Alignment.center,
         // image: NetworkImage(thumbnailUrl),
          image:AssetImage(thumbnailUrl,),
          fit: BoxFit.fill,
        ),
      ),



      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  color: body_color.withOpacity(0.8),
                ),

                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),

            ),
            alignment: Alignment.center,

          ),


          Align(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: body_color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                          color: body_color.withOpacity(0.8),
                          size: 22
                      ),
                      SizedBox(width: 7),
                      Text(rating,style: TextStyle(color:body_color.withOpacity(0.8) ),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: body_color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: body_color.withOpacity(0.8),
                        size: 22,
                      ),
                      SizedBox(width: 27),
                      Icon(
                        Icons.favorite,
                        color: body_color.withOpacity(0.8),
                        size: 22,
                      ),
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),


        ],
      ),
    );
  }
}






class ProductCart extends StatelessWidget {
  const ProductCart({ required this.product, required this.index});

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
              Positioned(
                bottom: -18,
                right: 18,
                width: 36,
                height: 36,
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:
                    CirclureSvgBtn('imaegs/icons/Cart.svg',(){}),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\$${product.price}',
            style: const TextStyle(
              color: Color(0xff0D0D0E),
              fontSize: 18,
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(
              color: Color(0xff797780),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
