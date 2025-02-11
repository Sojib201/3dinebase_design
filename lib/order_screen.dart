import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Utils.secondaryColor,
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
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 90.h,
                              width: 400.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r),
                                    bottomRight: Radius.circular(30.r),
                                  ),
                                  color: Utils.primaryColor),
                              child: Text('data'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150.w),
                              child: Container(
                                height: 90.h,
                                //width: 400.w,
                                // height: MediaQuery.of(context).size.height / 1,
                                // width: MediaQuery.of(context).size.width / 0.w,
                                //padding: EdgeInsets.only(left: 40.w, top: 40.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.r),
                                      bottomLeft: Radius.circular(30.r),
                                      topRight: Radius.circular(30.r),
                                      bottomRight: Radius.circular(30.r),
                                    ),
                                    color: Utils.redColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 90.h,
                              //width: 400.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r),
                                    bottomRight: Radius.circular(30.r),
                                  ),
                                  color: Utils.primaryColor),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 150.w),
                              child: Container(
                                height: 90.h,
                                //width: 400.w,
                                // height: MediaQuery.of(context).size.height / 1,
                                // width: MediaQuery.of(context).size.width / 0.w,
                                //padding: EdgeInsets.only(left: 40.w, top: 40.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.r),
                                      bottomLeft: Radius.circular(30.r),
                                      topRight: Radius.circular(30.r),
                                      bottomRight: Radius.circular(30.r),
                                    ),
                                    color: Utils.redColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Text('sdafjhj'),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text('sdafjhj'),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text('sdafjhj'),
                        SizedBox(
                          height: 100.h,
                        ),
                        Text('sdafjhj'),
                        SizedBox(
                          height: 100.h,
                        ),
                        Text('sdafjhj'),
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
                    flex: 6,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdfvjh'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text('sdafjhj'),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 220.w, top: 250.h),
            child: Container(
              // height: MediaQuery.of(context).size.height / 1,
              // width: MediaQuery.of(context).size.width / 0.w,
              padding: EdgeInsets.only(left: 20.w, top: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120.r),
                  ),
                  color: Utils.primaryColor),
            ),
          ),
        ],
      )),
    );
  }
}
