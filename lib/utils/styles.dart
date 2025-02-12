import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {

  static TextStyle tableTextStyle =  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize:36.sp,
    color: Utils.secondaryColor
  );


  static TextStyle itemTextStyle =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize:24.sp,
      color: Utils.secondaryColor
  );
  static TextStyle itemPriceTextStyle =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize:24.sp,
      color: Utils.redColor
  );

  static TextStyle swichButtonTextStyle1 =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize:24.sp,
      color: Utils.black
  );

  static TextStyle swichButtonTextStyle2 =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize:24.sp,
      color: Utils.primaryColor
  );

  static TextStyle heading1 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: Utils.primaryColor,
  );


  static TextStyle heading2 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: Utils.secondaryColor,
  );

  static TextStyle heading3 = TextStyle(
    fontSize: 35.sp,
    fontWeight: FontWeight.w500,
    color: Utils.secondaryColor,
  );

  static TextStyle heading4 = TextStyle(
    letterSpacing: 1,
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: Utils.black,
  );

  static Color availabeTableColor = const Color(0xFF49D18F);
  static Color reservedTableColor = const Color(0xFFFEC145);
  static Color bookedTableColor = Color(0xFFED7A08);
  static Color primaryColor = const Color(0xFFFDFEFF);
  static Color secondaryColor = const Color(0xFF50525F);
  static Color black = const Color(0xFF000000);
  static Color heading = const Color(0xFFFEC145);
  static Color logoColor = const Color(0xFF7f1424);
  static Color redColor = const Color(0xFFDC0D27);

  static Color delivery_collectionColor = const Color(0xFFFEC145);

  static BorderRadius tableCardRadius = BorderRadius.circular(110.r);
}
