import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';


class  Opertion
{
static double Increment(double number)
 {
   number=number+1;
   return number;

 }


static double Decrease(double number)
{
  number>1?
  number--:number;
  return number;
}

static double mul(double x,double y)
{
  return x*y;

}


}