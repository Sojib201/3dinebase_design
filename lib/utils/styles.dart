import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {

  static TextStyle tableTextStyle =  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize:36.sp,
    color: Utils.secondaryColor
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

  static Color availabeTableColor = Color(0xFF49D18F);
  static Color reservedTableColor = Color(0xFFFEC145);
  static Color bookedTableColor = Color(0xFFED7A08);
  static Color primaryColor = Color(0xFFFDFEFF);
  static Color secondaryColor = Color(0xFF50525F);
  static Color black = Color(0xFF000000);
  static Color heading = Color(0xFFFEC145);

  static Color textColor = Color(0xFF000000);

  static Color delivery_collectionColor = Color(0xFFFEC145);

  static BorderRadius tableCardRadius = BorderRadius.circular(105.r);
}
