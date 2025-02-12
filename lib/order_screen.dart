import 'package:action_panel/model/item_model.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:action_panel/widget/custom_switch_button.dart';
import 'package:action_panel/widget/item_widget.dart';
import 'package:action_panel/widget/tableCard.dart';
import 'package:action_panel/widget/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/tableModel.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<ItemModel> item = [
    ItemModel(
        itemName: 'Classic Smashed Cheeseburger',
        price: 20,
        imageUrl: 'assets/burger.png'),
    ItemModel(
        itemName: 'Chicken Fry',
        price: 100,
        imageUrl: 'assets/chicken_fry.png'),
    ItemModel(
        itemName: 'Classic Smashed Cheeseburger',
        price: 40,
        imageUrl: 'assets/hotdog.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
    ItemModel(itemName: 'Sandwich', price: 80, imageUrl: 'assets/sandwich.png'),
    ItemModel(itemName: 'Nachos', price: 60, imageUrl: 'assets/nachos.png'),
    ItemModel(
        itemName: 'Classic Smashed Cheeseburger',
        price: 10,
        imageUrl: 'assets/burger.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
    ItemModel(itemName: 'Sandwich', price: 90, imageUrl: 'assets/sandwich.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
    ItemModel(itemName: 'Sandwich', price: 80, imageUrl: 'assets/sandwich.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
    ItemModel(itemName: 'Sandwich', price: 90, imageUrl: 'assets/sandwich.png'),
    ItemModel(itemName: 'Nachos', price: 60, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Nachos', price: 10, imageUrl: 'assets/nachos.png'),
    ItemModel(itemName: 'Pizza', price: 50, imageUrl: 'assets/pizza.png'),
  ];
  TextEditingController searchController = TextEditingController();

  bool isFoodBarSelected = true;
  bool isCategoryCuisineselected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Utils.secondaryColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    //flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.r)),
                                        color: isFoodBarSelected
                                            ? Utils.redColor
                                            : Utils.primaryColor,
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

                                  // Cuisine Button
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.r)),
                                        color: isFoodBarSelected
                                            ? Utils.primaryColor
                                            : Utils.redColor,
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
                          ),
                          SizedBox(
                            width: 100.h,
                          ),
                          Padding(
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
                                        isCategoryCuisineselected = true;
                                      });
                                    },
                                    child: Container(
                                      height: 80.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.r)),
                                        color: isCategoryCuisineselected
                                            ? Utils.redColor
                                            : Utils.primaryColor,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Category',
                                        style: isCategoryCuisineselected
                                            ? Utils.swichButtonTextStyle2
                                            : Utils.swichButtonTextStyle1,
                                      ),
                                    ),
                                  ),

                                  // Cuisine Button
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isCategoryCuisineselected = false;
                                      });
                                    },
                                    child: Container(
                                      height: 80.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.r)),
                                        color: isCategoryCuisineselected
                                            ? Utils.primaryColor
                                            : Utils.redColor,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Cuisine',
                                        style: isCategoryCuisineselected
                                            ? Utils.swichButtonTextStyle1
                                            : Utils.swichButtonTextStyle2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100.h,
                          ),
                          Text('sdafjhj'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Row(
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 220.w, top: 250.h),
              child: Container(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.r),
                    ),
                    color: Utils.primaryColor),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(

                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Container(

                                      height: 100.h,
                                      //width: 900.w,
                                      decoration: BoxDecoration(
                                        color: Utils.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(35.r),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color:
                                        //         Colors.black.withOpacity(0.2),
                                        //     blurRadius: 5,
                                        //     spreadRadius: 2,
                                        //     offset: Offset(0, 2),
                                        //   ),
                                        // ],
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            blurRadius: 2,
                                            spreadRadius: 0,
                                            offset: Offset(2,2),
                                          ),
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            offset: Offset(-2, -1),
                                          ),


                                        ],
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Search',
                                          hintStyle: TextStyle(
                                            color: Utils.secondaryColor.withOpacity(0.7)
                                          ),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.w, vertical: 14.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 20.w,
                                  // ),
                                  Expanded(
                                    //flex: 1,
                                    child: GestureDetector(
                                      onTap: () {},
                                      // child: Container(
                                      //     width: 100.w,
                                      //     padding: EdgeInsets.all(10.w),
                                      //     height: 110.h,
                                      //     decoration: BoxDecoration(
                                      //       color: Utils.primaryColor,
                                      //       borderRadius:
                                      //           BorderRadius.circular(30.r),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //           color:
                                      //               Colors.black.withOpacity(0.2),
                                      //           blurRadius: 5,
                                      //           spreadRadius: 2,
                                      //           offset: Offset(2, 2),
                                      //         ),
                                      //       ],
                                      //     ),
                                      //     child: Image.asset('assets/filter.png',width: 10.w,height: 10.h,),
                                      // ),
                                      child: Image.asset(
                                        'assets/filter.png',
                                        width: 90.w,
                                        height: 100.h,
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    flex: 2,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(10.w),
                                        height: 100.h,
                                        decoration: BoxDecoration(
                                          color: Utils.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(35.r),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.2),
                                              blurRadius: 2,
                                              spreadRadius: 0,
                                              offset: Offset(2,2),
                                            ),
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.2),
                                              blurRadius: 4,
                                              spreadRadius: 0,
                                              offset: Offset(-2, -1),
                                            ),


                                          ],
                                        ),
                                        child: Row(

                                          children: [
                                            Expanded(
                                              flex:5,
                                              child: Text(
                                                'Custom Order',
                                                style: TextStyle(
                                                    fontSize: 29.sp,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.2),
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Icon(
                                                Icons.add_circle,
                                                color: Utils.redColor,
                                                size: 65.h,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 6,
                            child: GridView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 0.9,
                                crossAxisSpacing: 18,
                                mainAxisSpacing: 20,
                              ),
                              itemCount: item.length,
                              itemBuilder: (context, index) {
                                ItemModel itemmodel = item[index];
                                return ItemWidget(
                                  itemName: itemmodel.itemName,
                                  price: itemmodel.price,
                                  imageUrl: itemmodel.imageUrl,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(),
                    )
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
