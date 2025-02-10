import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      width: 550.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.r),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.9.w, color: Utils.secondaryColor),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(28.r)),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Utils.secondaryColor.withOpacity(0.6),
                    //   blurRadius: 10,
                    //   spreadRadius: 20,
                    //   offset: const Offset(0, 0),
                    // ),
                    BoxShadow(
                      color: Utils.secondaryColor.withOpacity(0.6),
                      blurRadius: 20.r,
                      spreadRadius: 40.r,
                      offset:  Offset(0.w, 0.h),
                    ),
                    // BoxShadow(
                    //   color: Utils.primaryColor.withOpacity(0.45),
                    //   blurRadius: 8,
                    //   spreadRadius: -30,
                    //   offset: const Offset(0, 0),
                    // ),
                    BoxShadow(
                      color: Utils.primaryColor.withOpacity(0.45),
                      blurRadius: 16.r,
                      spreadRadius: -60.r,
                      offset:  Offset(0.w, 0.h),
                    ),
                    // BoxShadow(
                    //   color: Utils.primaryColor.withOpacity(1),
                    //   blurRadius: 20,
                    //   spreadRadius: -10,
                    //   offset: const Offset(0, 2),
                    // ),
                    BoxShadow(
                      color: Utils.primaryColor.withOpacity(1),
                      blurRadius: 40.r,
                      spreadRadius: -20.r,
                      offset:  Offset(0.w, 4.h),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                icon != null?Expanded(
                  flex: 2,
                  child: Icon(
                    icon,
                    size: 65.r,
                    color: Utils.black,
                  ),
                ): Text(''),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 21.h),
                    child: Text(
                      text,
                      textAlign: icon!=null?TextAlign.start: TextAlign.center,
                      style: Utils.heading4,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
