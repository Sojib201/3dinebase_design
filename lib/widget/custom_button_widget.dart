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
      width: 500.w,
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
                  border: Border.all(width: 0.9.w, color: Color(0xffff50525F)),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(28.r)),
                  boxShadow: [
                    BoxShadow(
                      color: Utils.secondaryColor.withOpacity(0.6),
                      blurRadius: 10,
                      spreadRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                    BoxShadow(
                      color: Utils.primaryColor.withOpacity(0.45),
                      blurRadius: 8,
                      spreadRadius: -30,
                      offset: const Offset(0, 0),
                    ),
                    BoxShadow(
                      color: Utils.primaryColor.withOpacity(1),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 2),
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
                    padding: EdgeInsets.symmetric(vertical: 13.h),
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
