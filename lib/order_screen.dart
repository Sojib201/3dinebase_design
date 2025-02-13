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
        itemName: 'Classic Smashed Cheeseburger hui hgbuy yguy yug',
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
    var padding = MediaQuery.of(context).padding;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //resizeToAvoidBottomInset: false,
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
            Positioned(
              left: 95,
              top: 115,
              child: Container(
                height: size.height - padding.bottom - padding.top - 115,
                width: size.width - 95,
                // width: 200,
                //padding: EdgeInsets.only(left: 20.w, top: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90.r),
                    ),
                    color: Utils.primaryColor),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        child: Column(
                          children: [
                            Expanded(
                              //flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.w,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 9,
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
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              blurRadius: 2,
                                              spreadRadius: 0,
                                              offset: Offset(2, 2),
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
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
                                                color: Utils.secondaryColor
                                                    .withOpacity(0.7)),
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16.w,
                                                    vertical: 14.h),
                                          ),
                                        ),
                                      ),
                                    ),
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
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 0,
                                                offset: Offset(2, 2),
                                              ),
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 4,
                                                spreadRadius: 0,
                                                offset: Offset(-2, -1),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: FittedBox(
                                                  child: Text(
                                                    'Custom Order',
                                                    style: TextStyle(
                                                        fontSize: 29.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        letterSpacing: 0.2),
                                                  ),
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.w, vertical: 10.h),
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
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        //height: double.infinity,
                        decoration: BoxDecoration(
                          color: Utils.primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Utils.black.withOpacity(0.4),
                              blurRadius: 2,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 5.h),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order: #983745982739',
                                      style: Utils.orderTextStyle,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print('dsf');
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h, horizontal: 20),
                                        height: 70.h,
                                        decoration: BoxDecoration(
                                          color: Utils.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              blurRadius: 2,
                                              spreadRadius: 0,
                                              offset: Offset(2, 2),
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              blurRadius: 4,
                                              spreadRadius: 0,
                                              offset: Offset(-2, -1),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Convert',
                                            style: TextStyle(
                                                color: Utils.primaryColor,
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.2),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                flex: 7,
                                child: Container(
                                  //padding: EdgeInsets.symmetric(horizontal: 20.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                      color:
                                          Utils.secondaryColor.withOpacity(0.2),
                                      width: 2.w,
                                    ),
                                    color: Utils.primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Utils.black.withOpacity(0.4),
                                        blurRadius: 0,
                                        spreadRadius: 0,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      // Padding(
                                      //   padding: EdgeInsets.only(
                                      //       left: 30.w, top: 5.h),
                                      //   child: Row(
                                      //     children: [
                                      //       Expanded(
                                      //         flex: 6,
                                      //         child: Text(
                                      //           'Item',
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               fontSize: 28.sp,
                                      //               color: Utils.black),
                                      //         ),
                                      //       ),
                                      //       Expanded(
                                      //         flex: 2,
                                      //         child: Text(
                                      //           'Qty',
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               fontSize: 28.sp,
                                      //               color: Utils.black),
                                      //         ),
                                      //       ),
                                      //       Expanded(
                                      //         flex: 2,
                                      //         child: Text(
                                      //           'Price',
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               fontSize: 28.sp,
                                      //               color: Utils.black),
                                      //         ),
                                      //       )
                                      //     ],
                                      //   ),
                                      // ),
                                      // Divider(),
                                      // ListView.builder(
                                      //   itemCount: 10,
                                      //   itemBuilder: (context, index) {
                                      //     return Column(
                                      //       children: [
                                      //         Padding(
                                      //           padding: EdgeInsets.only(
                                      //               left: 30.w, top: 5.h),
                                      //           child: Row(
                                      //             children: [
                                      //               Expanded(
                                      //                 flex: 5,
                                      //                 child: Text(
                                      //                   maxLines: 2,
                                      //                   'Classic Smashed Cheeseburger',
                                      //                   style: TextStyle(
                                      //                       fontWeight: FontWeight.bold,
                                      //                       fontSize: 24.sp,
                                      //                       color: Utils.black),
                                      //                 ),
                                      //               ),
                                      //               Expanded(
                                      //                   flex: 2,
                                      //                   child: Padding(
                                      //                     padding: EdgeInsets.symmetric(
                                      //                         horizontal: 25.w),
                                      //                     child: Container(
                                      //                       height: 80.h,
                                      //                       //width: 20.w,
                                      //                       decoration: BoxDecoration(
                                      //                         borderRadius:
                                      //                         BorderRadius.circular(
                                      //                             20.r),
                                      //                         color:
                                      //                         Utils.secondaryColor,
                                      //                       ),
                                      //                       child: Center(
                                      //                         child: Text(
                                      //                           '3',
                                      //                           style: TextStyle(
                                      //                               fontSize: 28.sp,
                                      //                               fontWeight:
                                      //                               FontWeight.bold,
                                      //                               color: Utils
                                      //                                   .primaryColor),
                                      //                         ),
                                      //                       ),
                                      //                     ),
                                      //                   )),
                                      //               Expanded(
                                      //                 flex: 2,
                                      //                 child: Text(
                                      //                   "\$${75}",
                                      //                   style: TextStyle(
                                      //                       fontWeight: FontWeight.bold,
                                      //                       fontSize: 28.sp,
                                      //                       color: Utils.black),
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           ),
                                      //         ),
                                      //         SizedBox(height: 10.h,),
                                      //       ],
                                      //     );
                                      //   }
                                      // )


                                  Expanded(
                                  child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.w, top: 5.h),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 6,
                                            child: Text(
                                              'Item',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp,
                                                  color: Utils.black),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              'Qty',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp,
                                                  color: Utils.black),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              'Price',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28.sp,
                                                  color: Utils.black),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                Divider(),


                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.w, top: 5.h),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: 5,
                                                  child: Text(
                                                    'Classic Smashed Cheeseburger',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 24.sp,
                                                      color: Utils.black,
                                                    ),
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis, // Prevent overflow
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                                    child: Container(
                                                      height: 60.h, // Adjusted height to avoid overflow
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20.r),
                                                        color: Utils.secondaryColor,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          '3',
                                                          style: TextStyle(
                                                            fontSize: 24.sp, // Adjusted font size
                                                            fontWeight: FontWeight.bold,
                                                            color: Utils.primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    "\$75",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 28.sp,
                                                      color: Utils.black,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10.h),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                ],
                              ),
                        ),



                        ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(20.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                      color:
                                          Utils.secondaryColor.withOpacity(0.2),
                                      width: 2.w,
                                    ),
                                    color: Utils.primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Utils.black.withOpacity(0.4),
                                        blurRadius: 0,
                                        spreadRadius: 0,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          height: 70.h,
                                          //width: 900.w,
                                          decoration: BoxDecoration(
                                            color: Utils.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(25.r),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 2,
                                                spreadRadius: 0,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Apply Promo Code',
                                              hintStyle: TextStyle(
                                                  color: Utils.secondaryColor
                                                      .withOpacity(0.7)),
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.w,
                                                      vertical: 14.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40.w,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            print('dsf');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.h, horizontal: 20),
                                            height: 70.h,
                                            decoration: BoxDecoration(
                                              color: Utils.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(25.r),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 0,
                                                  offset: Offset(2, 2),
                                                ),
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 4,
                                                  spreadRadius: 0,
                                                  offset: Offset(-2, -1),
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Apply',
                                                style: TextStyle(
                                                    color: Utils.primaryColor,
                                                    fontSize: 28.sp,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.2),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  //padding: EdgeInsets.symmetric(horizontal: 20.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                      color:
                                          Utils.secondaryColor.withOpacity(0.2),
                                      width: 2.w,
                                    ),
                                    color: Utils.secondaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Utils.black.withOpacity(0.4),
                                        blurRadius: 0,
                                        spreadRadius: 0,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.h,
                                        left: 30.w,
                                        right: 30.w,
                                        bottom: 10.h),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Discount',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                              Text(
                                                "\$${75}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Tips',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                              Text(
                                                "\$${75}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Vat',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                              Text(
                                                "\$${75}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                              Text(
                                                "\$${875}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28.sp,
                                                    color: Utils.primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  print('dsf');
                                                },
                                                child: Container(
                                                  width: 240.w,
                                                  height: 80.h,
                                                  decoration: BoxDecoration(
                                                    color: Utils.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.r),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 2,
                                                        spreadRadius: 0,
                                                        offset: Offset(2, 2),
                                                      ),
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 4,
                                                        spreadRadius: 0,
                                                        offset: Offset(-2, -1),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 3,
                                                        child:
                                                            Icon(Icons.print),
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                          'Guest',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.sp,
                                                            color: Utils.black,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  print('dsf');
                                                },
                                                child: Container(
                                                    width: 240.w,
                                                    height: 80.h,
                                                    decoration: BoxDecoration(
                                                      color: Utils.primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.r),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.2),
                                                          blurRadius: 2,
                                                          spreadRadius: 0,
                                                          offset: Offset(2, 2),
                                                        ),
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.2),
                                                          blurRadius: 4,
                                                          spreadRadius: 0,
                                                          offset:
                                                              Offset(-2, -1),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child:
                                                              Icon(Icons.print),
                                                        ),
                                                        Expanded(
                                                          flex: 4,
                                                          child: Text(
                                                            'Kitchen',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 24.sp,
                                                              color:
                                                                  Utils.black,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //padding: EdgeInsets.symmetric(horizontal: 20.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                      color:
                                          Utils.secondaryColor.withOpacity(0.2),
                                      width: 2.w,
                                    ),
                                    color: Utils.primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Utils.black.withOpacity(0.4),
                                        blurRadius: 0,
                                        spreadRadius: 0,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  print('dsf');
                                                },
                                                child: Container(
                                                  width: 300.w,
                                                  //height: 80.h,
                                                  decoration: BoxDecoration(
                                                    color: Utils.greenColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 2,
                                                        spreadRadius: 0,
                                                        offset: Offset(2, 2),
                                                      ),
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 4,
                                                        spreadRadius: 0,
                                                        offset:
                                                            Offset(-2, -1),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Confirm Order',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 24.sp,
                                                        color: Utils
                                                            .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  print('dsf');
                                                },
                                                child: Container(
                                                  width: 300.w,
                                                  //height: 80.h,
                                                  decoration: BoxDecoration(
                                                    color: Utils.redColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 2,
                                                        spreadRadius: 0,
                                                        offset: Offset(2, 2),
                                                      ),
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        blurRadius: 4,
                                                        spreadRadius: 0,
                                                        offset:
                                                            Offset(-2, -1),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Icon(
                                                          Icons
                                                              .cancel_outlined,
                                                          color: Utils
                                                              .primaryColor,
                                                          size: 40.h,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Text(
                                                          'Cancel Order',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                            fontSize: 24.sp,
                                                            color: Utils
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print('dsf');
                                          },
                                          child: Container(
                                            width: 300.w,
                                            height: 120.h,
                                            decoration: BoxDecoration(
                                              color: Utils.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 2,
                                                  spreadRadius: 0,
                                                  offset: Offset(2, 2),
                                                ),
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 4,
                                                  spreadRadius: 0,
                                                  offset: Offset(-2, -1),
                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Icon(
                                                    Icons.payments_outlined,
                                                    color: Utils.primaryColor,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Text(
                                                    'Payment',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 28.sp,
                                                      color:
                                                          Utils.primaryColor,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
