import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class customTitle extends StatelessWidget {
  final String text;

  const customTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.w),
      child: Container(
        height: 90.h,
        width: 260.w,
        decoration: BoxDecoration(
            color: Utils.heading, borderRadius: BorderRadius.circular(28.r)),
        child: Center(
            child: Text(
          text,
          style: Utils.heading4,
        )),
      ),
    );
  }
}
