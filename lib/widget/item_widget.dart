import 'dart:ui';

import 'package:action_panel/utils/image_constants.dart';
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
              flex: 4,
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
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w,right: 1.w),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(itemName,
                          maxLines: 2, style: Utils.itemTextStyle),
                    ),
                    Expanded(
                      flex: 2,
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
