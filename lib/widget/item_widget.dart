import 'dart:ui';

import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  final String itemName;
  final double price;
  final String imageUrl;

  const ItemWidget({
    Key? key,
    required this.itemName,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('asd');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Utils.primaryColor,
          borderRadius: BorderRadius.circular(45.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(2,2),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(-2, -1),
            ),


          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.3,
                    child: SizedBox(
                      //height: 300.h,
                      child: Image.asset(
                        imageUrl,
                      ),
                    ),
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: -60.w, sigmaY: 10.h),
                      child: SizedBox(
                        //height: 300.h,
                        child: Image.asset(
                          imageUrl,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           // SizedBox(height: 10.h,),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 50.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(itemName,
                          maxLines: 2, style: Utils.itemTextStyle),
                    ),
                    FittedBox(
                      child: Text("\$${price.toString()}",
                          style: Utils.itemPriceTextStyle),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
