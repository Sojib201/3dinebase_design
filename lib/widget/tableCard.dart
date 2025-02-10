import 'dart:ui';

import 'package:action_panel/main.dart';
import 'package:action_panel/utils/image_constants.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableCard extends StatelessWidget {
  final String tableName;
  final int seatNumber;
  final Color tableColor;
  final Color borderColor;

  const TableCard({
    Key? key,
    required this.tableName,
    required this.seatNumber,
    required this.tableColor,
    required this.borderColor,
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
          borderRadius: Utils.tableCardRadius,
          border: Border.all(
            color: borderColor,
            width: 10.w,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.75,
                    child: SizedBox(
                      height: 192.h,
                      child: Image.asset('assets/table.png', color: Utils.black),
                    ),
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.w, sigmaY: -20.h),
                      child: SizedBox(
                        height: 192.h,
                        child: Image.asset(
                          ImageConstants().tableImgPath,
                          color: tableColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.only(left: 10.w,right: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(tableName, style: Utils.tableTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          seatNumber.toString(),
                          style: Utils.tableTextStyle,
                        ),
                        SizedBox(width: 8.w),
                        Icon(
                          Icons.people,
                          size: 62.h,
                          color: Utils.secondaryColor,
                        ),
                      ],
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
