import 'dart:ui';

import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryitemWidget extends StatelessWidget {
  final String categoryItemName;

  final String imageUrl;

  const CategoryitemWidget({
    Key? key,
    required this.categoryItemName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('asd');
      },
      child: Column(

        children: [
          Image.asset(
              imageUrl,width: 100.w,height: 150.h,
            ),

          Text(categoryItemName,),
        ],
      ),
    );
  }
}
