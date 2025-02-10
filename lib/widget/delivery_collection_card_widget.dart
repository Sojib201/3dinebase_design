import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class DeliveryCollectionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String? title;
  final String number;


  const DeliveryCollectionWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.number,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 12.w),
        height: 279.h,
        width: 230.w,
        decoration: BoxDecoration(
          border: Border.all(
              width: 1.5.w,
              color: Utils.secondaryColor),
          color: Utils.primaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(40.r)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 80.h,),
            SizedBox(height: 14.h,),
            title!=null?Text(title!):Text(''),
            title==null?SizedBox(height: 12.h,):SizedBox.shrink(),
            Text(number),
          ],
        ),
      ),
    );
  }
}
