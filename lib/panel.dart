import 'package:action_panel/action_panel.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:action_panel/widget/TableStatusWidget.dart';
import 'package:action_panel/widget/custom_button_widget.dart';
import 'package:action_panel/widget/delivery_collection_card_widget.dart';
import 'package:action_panel/widget/tableArea.dart';
import 'package:action_panel/widget/tableCard.dart';
import 'package:action_panel/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/tableModel.dart';

class ActionPanel extends StatefulWidget {
  const ActionPanel({super.key});

  @override
  State<ActionPanel> createState() => _ActionPanelState();
}

class _ActionPanelState extends State<ActionPanel> {
  List<TableModel> tables = [
    TableModel(name: "Table1", seats: 4, status: TableStatus.available),
    TableModel(name: "Table2", seats: 2, status: TableStatus.booked),
    TableModel(name: "Table3", seats: 6, status: TableStatus.reserved),
    TableModel(name: "Table4", seats: 2, status: TableStatus.available),
    TableModel(name: "Table5", seats: 6, status: TableStatus.available),
    TableModel(name: "Table6", seats: 5, status: TableStatus.available),
    TableModel(name: "Table7", seats: 4, status: TableStatus.reserved),
    TableModel(name: "Table8", seats: 1, status: TableStatus.available),
    TableModel(name: "Table9", seats: 9, status: TableStatus.reserved),
    TableModel(name: "Table10", seats: 7, status: TableStatus.booked),
    TableModel(name: "Table11", seats: 1, status: TableStatus.available),
    TableModel(name: "Table12", seats: 2, status: TableStatus.booked),
    TableModel(name: "Table13", seats: 6, status: TableStatus.reserved),
    TableModel(name: "Table14", seats: 5, status: TableStatus.available),
    TableModel(name: "Table15", seats: 4, status: TableStatus.reserved),
    TableModel(name: "Table16", seats: 3, status: TableStatus.available),
  ];

  int selectedIndex = -1;
  List<String> labels = [
    "Outdoor",
    "Indoor",
    "VIP",
    "Rooftop",
    "Outdoor",
    "VIP",
    "Rooftop",
  ];

  List<DeliveryCollectionWidget> deliveryList = [
    DeliveryCollectionWidget(
      icon: Icons.directions_bike_sharp,
      title: "John Doe",
      number: "123456789",
      onTap: () {},
    ),
    DeliveryCollectionWidget(
      icon: Icons.directions_bike_sharp,
      number: "987654321",
      onTap: () {},
      title: '',
    ),
    DeliveryCollectionWidget(
      icon: Icons.directions_bike_sharp,
      title: "Sarah Smith",
      number: "555666777",
      onTap: () {},
    ),
    DeliveryCollectionWidget(
      icon: Icons.directions_bike_sharp,
      number: "333222111",
      onTap: () {},
      title: '',
    ),
  ];

  List<DeliveryCollectionWidget> CollectionList = [
    DeliveryCollectionWidget(
      icon: Icons.shopping_cart_rounded,
      title: "John Doe",
      number: "123456789",
      onTap: () {},
    ),
    DeliveryCollectionWidget(
      icon: Icons.shopping_cart_rounded,
      number: "987654321",
      onTap: () {},
      title: '',
    ),
    DeliveryCollectionWidget(
      icon: Icons.shopping_cart_rounded,
      title: "Sarah Smith",
      number: "555666777",
      onTap: () {},
    ),
    DeliveryCollectionWidget(
      icon: Icons.shopping_cart_rounded,
      number: "333222111",
      onTap: () {},
      title: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                width: double.infinity,
                height: 135.h,
                //height: MediaQuery.of(context).size.height/10,
                decoration: BoxDecoration(
                  color: Utils.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(28.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 74.h,
                      ),
                      color: Utils.secondaryColor,
                      onPressed: () {},
                    ),
                    Text(
                      'Action Panel',
                      style: TextStyle(
                          fontSize: 60.sp,
                          fontWeight: FontWeight.bold,
                          color: Utils.secondaryColor),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 74.h,
                      ),
                      color: Utils.secondaryColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              flex: 9,
              child: Container(
                //height: MediaQuery.of(context).size.height / 1.18,
                //height: 400.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w, bottom: 24.h),
                        child: Container(
                          //height: MediaQuery.of(context).size.height / 1.21,
                          decoration: BoxDecoration(
                            color: Utils.primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(28.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.h),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: labels.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            TableArea(
                                              label: labels[index],
                                              isSelected:
                                                  index == selectedIndex,
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex = index;
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 33.w,
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                                SizedBox(
                                  height: 26.h,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 1.3,
                                      crossAxisSpacing: 28,
                                      mainAxisSpacing: 24,
                                    ),
                                    itemCount: tables.length,
                                    itemBuilder: (context, index) {
                                      TableModel table = tables[index];

                                      Color tableColor;
                                      Color borderColor;

                                      if (table.status ==
                                          TableStatus.available) {
                                        tableColor = Utils.availabeTableColor;
                                        borderColor = Utils.availabeTableColor;
                                      } else if (table.status ==
                                          TableStatus.booked) {
                                        tableColor = Utils.bookedTableColor;
                                        borderColor = Utils.bookedTableColor;
                                      } else if (table.status ==
                                          TableStatus.reserved) {
                                        tableColor = Utils.reservedTableColor;
                                        borderColor = Utils.reservedTableColor;
                                      } else {
                                        tableColor = Colors.grey;
                                        borderColor = Colors.black;
                                      }

                                      return TableCard(
                                        tableName: table.name,
                                        seatNumber: table.seats,
                                        borderColor: borderColor,
                                        tableColor: tableColor,
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [

                                      TableStatusWidget(
                                        color: Utils.availabeTableColor,
                                        text: 'Free',
                                        seatNumber: '4',
                                      ),

                                      TableStatusWidget(
                                        color: Utils.reservedTableColor,
                                        text: 'Reserved',
                                        seatNumber: '5',
                                      ),

                                      TableStatusWidget(
                                        color: Utils.bookedTableColor,
                                        text: 'Booked',
                                        seatNumber: '6',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(right: 24.w, bottom: 24.h),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding:
                                    EdgeInsets.only(top: 10.h, bottom: 8.h),

                                //height: MediaQuery.of(context).size.height / 3.2,
                                //width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Utils.primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(28.r),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20.w),
                                            height: 95.h,
                                            //width: 240.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1.5.w,
                                                  color: Utils.secondaryColor),
                                              color: Utils.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28.r)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Jan 28, 2025',
                                                style: Utils.heading3,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24.w,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.w),
                                            height: 95.h,
                                            //width: 240.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1.5.w,
                                                  color: Utils.secondaryColor),
                                              color: Utils.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28.r)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '12.17 PM',
                                                style: Utils.heading3,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      //flex: 1,
                                      child: GestureDetector(
                                          onTap: () {
                                            print('sdfgsgsd');
                                          },
                                          child: CustomButton(
                                              icon: Icons.notifications,
                                              text: 'Notifications')),
                                    ),
                                    Expanded(
                                      //flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          print('sdfgsgsd');
                                        },
                                        child: CustomButton(
                                          text: 'New Order',
                                          icon: Icons.add_circle_outline,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      //flex: 1,
                                      child: CustomButton(
                                          icon: null, text: 'Number Not Found'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    //flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Utils.primaryColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(28.r),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          const customTitle(
                                            text: 'Delivery',
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          // DeliveryCollectionWidget(
                                          //   onTap: () {},
                                          //   icon: Icons.directions_bike_sharp,
                                          //   title: 'Hasan',
                                          //   number: '0123542121',
                                          // ),
                                          // SizedBox(height: 18.h,),
                                          //
                                          // DeliveryCollectionWidget(
                                          //   onTap: () {},
                                          //   icon: Icons.directions_bike_sharp,
                                          //   title: '',
                                          //   number: '0123542121',
                                          // ),
                                          Expanded(
                                            child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              itemCount: deliveryList.length,
                                              itemBuilder: (context, index) {
                                                final item =
                                                    deliveryList[index];
                                                return Column(children: [
                                                  DeliveryCollectionWidget(
                                                    onTap: () {},
                                                    icon: item.icon,
                                                    title: item.title,
                                                    number: item.number,
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),
                                                ]);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Expanded(
                                    //flex: 2,
                                    child: Container(
                                      // height:
                                      //     MediaQuery.of(context).size.height / 2,
                                      //width: MediaQuery.of(context).size.width / 8,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(28.r),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          customTitle(text: 'Collection'),
                                          SizedBox(
                                            height: 20.h,
                                          ),

                                          // DeliveryCollectionWidget(
                                          //   onTap: () {},
                                          //   icon: Icons.shopping_cart_rounded,
                                          //   title: 'Hasan',
                                          //   number: '0123542121',
                                          // ),
                                          // SizedBox(height: 18.h,),
                                          //
                                          // DeliveryCollectionWidget(
                                          //   onTap: () {},
                                          //   icon: Icons.shopping_cart_rounded,
                                          //   title: 'Hasan',
                                          //   number: '0123542121',
                                          // ),

                                          Expanded(
                                            child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              itemCount: CollectionList.length,
                                              itemBuilder: (context, index) {
                                                final item =
                                                    CollectionList[index];
                                                return Column(children: [
                                                  DeliveryCollectionWidget(
                                                    onTap: () {},
                                                    icon: item.icon,
                                                    title: item.title,
                                                    number: item.number,
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),
                                                ]);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
