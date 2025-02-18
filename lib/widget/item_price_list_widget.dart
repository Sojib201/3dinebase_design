import 'dart:ui';

import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemPriceListWidget extends StatelessWidget {
  final String itemName;
  final String qty;
  final double price;

  const ItemPriceListWidget({
    Key? key,
    required this.itemName,
    required this.qty,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Text(
            itemName,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28.sp,
              color: Utils.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          height: 80.h,
          width: 75.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Utils.secondaryColor,
          ),
          child: Center(
            child: Text(
              qty,
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: Utils.primaryColor,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
           "\$$price".toString(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28.sp,
              color: Utils.black,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
