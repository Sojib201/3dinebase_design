
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class TableArea extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const TableArea({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120.h,
        width: 400.w,
        decoration: BoxDecoration(
          border: Border.all(width: 2.w, color: Utils.secondaryColor),
          color: isSelected ? Utils.secondaryColor : Utils.primaryColor,
          borderRadius:  BorderRadius.all(Radius.circular(40.r)),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Utils.secondaryColor.withOpacity(0.5),
                    blurRadius: 3,
                    offset:  Offset(0.w, 4.h),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            label,
            style: isSelected ? Utils.heading1 : Utils.heading2,
          ),
        ),
      ),
    );
  }
}
