import 'dart:ui';

import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryitemWidget extends StatelessWidget {
  final String categoryItemName;

  final String imageUrl;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryitemWidget({
    Key? key,
    required this.categoryItemName,
    required this.imageUrl,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //width: 220.w,

        padding: EdgeInsets.only(top:20.h,bottom: 20.h,left: 10.w,right: 10.w),
        decoration: BoxDecoration(
          border: Border.all(width: 2.w, color: Utils.secondaryColor),
          color: isSelected ? Utils.primaryColor : Utils.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.r),
            bottomLeft: Radius.circular(45.r),
          ),
          // boxShadow: isSelected
          //     ? [
          //         BoxShadow(
          //           color: Utils.secondaryColor.withOpacity(0.5),
          //           blurRadius: 10,
          //           offset: Offset(0.w, 0.h),
          //         ),
          //       ]
          //     : [],
        ),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              //fit: BoxFit.contain,
              width: 140.w,
              height: 140.h,
            ),
            Text(
              textAlign: TextAlign.center,
              categoryItemName,
              style: isSelected
                  ? TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                      color: Utils.black,
                    )
                  : TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                      color: Utils.primaryColor,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
