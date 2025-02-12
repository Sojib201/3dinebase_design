import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class ToggleSwitchButton extends StatefulWidget {
  @override
  _ToggleSwitchButtonState createState() => _ToggleSwitchButtonState();
}

class _ToggleSwitchButtonState extends State<ToggleSwitchButton> {
  bool isFoodSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFoodSelected = !isFoodSelected;
          });
        },
        child: Container(
          height: 90.h,
          width: 400.w,
          decoration: BoxDecoration(
            color: Utils.primaryColor,
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Stack(
            children: [
              Container(
                height: 90.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: isFoodSelected ? Utils.redColor : Utils.primaryColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Food',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 90.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: isFoodSelected ? Utils.primaryColor : Utils.redColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Bar',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
