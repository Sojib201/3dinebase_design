import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

///sojib

class CustomSwitchButton extends StatefulWidget {
  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool isFoodBarSelected = true;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.only(top: 30.h),
    //   child: GestureDetector(
    //     onTap: () {
    //       setState(() {
    //         isSelected = !isSelected;
    //       });
    //     },
    //     child: Container(
    //         height: 90.h,
    //         width: 380.w,
    //         decoration: BoxDecoration(
    //           color: Utils.primaryColor,
    //           borderRadius: BorderRadius.circular(30.r),
    //         ),
    //         child: Stack(
    //           children: [
    //             Container(
    //               height: 90.h,
    //               width: isSelected ? 200.w : 190.w,
    //               decoration: BoxDecoration(
    //                 borderRadius:
    //                 BorderRadius.circular(30.r),
    //                 color: isSelected
    //                     ? Utils.redColor
    //                     : Utils.primaryColor,
    //               ),
    //               alignment: Alignment.center,
    //               child: Text(
    //                 'Food',
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 18.sp),
    //               ),
    //             ),
    //             Padding(
    //               padding: isSelected
    //                   ? EdgeInsets.only(left: 200.w)
    //                   : EdgeInsets.only(left: 180.w),
    //               child: Container(
    //                 height: 90.h,
    //                 // width: isSelected?200.w: 200.w,
    //                 decoration: BoxDecoration(
    //                   color: isSelected
    //                       ? Utils.primaryColor
    //                       : Utils.redColor,
    //                   borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(30.r),
    //                       bottomLeft:
    //                       Radius.circular(30.r),
    //                       topRight: Radius.circular(30.r),
    //                       bottomRight:
    //                       Radius.circular(30.r)),
    //                 ),
    //                 alignment: Alignment.center,
    //                 child: Text(
    //                   'Bar',
    //                   style: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 18.sp),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         )),
    //   ),
    // );

    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Container(
        height: 80.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: Utils.primaryColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isFoodBarSelected = true;
                });
              },
              child: Container(
                height: 80.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.r)),
                  color:
                      isFoodBarSelected ? Utils.redColor : Utils.primaryColor,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Food',
                  style: isFoodBarSelected
                      ? Utils.swichButtonTextStyle2
                      : Utils.swichButtonTextStyle1,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFoodBarSelected = false;
                });
              },
              child: Container(
                height: 80.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.r)),
                  color:
                      isFoodBarSelected ? Utils.primaryColor : Utils.redColor,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Bar',
                  style: isFoodBarSelected
                      ? Utils.swichButtonTextStyle1
                      : Utils.swichButtonTextStyle2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
