import 'package:action_panel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class TableStatusWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String seatNumber;

  const TableStatusWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.seatNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 380.w,
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.w,
          color: Utils.secondaryColor.withOpacity(.40),
        ),
        color: Utils.primaryColor,
        borderRadius:  BorderRadius.all(Radius.circular(28.r)),
      ),
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18.r,
                  backgroundColor: color,
                ),
                 SizedBox(width: 16.w),
                Text(
                 text,
                  style: Utils.heading3,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  height: 34.h,
                  width: 2.4.w,
                  color: Utils.secondaryColor.withOpacity(.40),
                ),
                 SizedBox(width: 12.w),
                Text(
                  seatNumber,
                  style: Utils.heading3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
