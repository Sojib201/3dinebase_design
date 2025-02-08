import 'package:action_panel/action_panel.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:action_panel/widget/TableStatusWidget.dart';
import 'package:action_panel/widget/tableArea.dart';
import 'package:action_panel/widget/tableCard.dart';
import 'package:flutter/material.dart';

import 'model/tableModel.dart';

class ActionPanel extends StatefulWidget {
  const ActionPanel({super.key});

  @override
  State<ActionPanel> createState() => _ActionPanelState();
}

class _ActionPanelState extends State<ActionPanel> {
  List<TableModel> tables = [
    TableModel(name: "T1", seats: 4, status: TableStatus.available),
    TableModel(name: "T2", seats: 2, status: TableStatus.booked),
    TableModel(name: "T3", seats: 6, status: TableStatus.reserved),
    TableModel(name: "T4", seats: 2, status: TableStatus.available),
    TableModel(name: "T5", seats: 6, status: TableStatus.available),
    TableModel(name: "T6", seats: 5, status: TableStatus.available),
    TableModel(name: "T7", seats: 4, status: TableStatus.reserved),
    TableModel(name: "T8", seats: 1, status: TableStatus.available),
    TableModel(name: "T9", seats: 9, status: TableStatus.reserved),
    TableModel(name: "T10", seats: 7, status: TableStatus.booked),
    TableModel(name: "T11", seats: 1, status: TableStatus.available),
    TableModel(name: "T12", seats: 2, status: TableStatus.booked),
    TableModel(name: "T13", seats: 6, status: TableStatus.reserved),
    TableModel(name: "T14", seats: 5, status: TableStatus.available),
    TableModel(name: "T15", seats: 4, status: TableStatus.reserved),
    TableModel(name: "T16", seats: 3, status: TableStatus.available),
    TableModel(name: "T17", seats: 6, status: TableStatus.reserved),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                //height: 65,
                //height: MediaQuery.of(context).size.height/10,
                decoration: BoxDecoration(
                  color: Utils.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon(
                    //   Icons.menu,
                    //   size: 34,
                    //   color: Utils.secondaryColor,
                    // ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 34,
                      ),
                      color: Utils.secondaryColor,
                      onPressed: () {},
                    ),
                    Text(
                      'Action Panel',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Utils.secondaryColor),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 34,
                      ),
                      color: Utils.secondaryColor,
                      onPressed: () {},
                    ),
                    // Icon(
                    //   Icons.home,
                    //   size: 34,
                    //   color: Utils.secondaryColor,
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.18,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.21,
                          decoration: BoxDecoration(
                            color: Utils.primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  // child: ListView.builder(
                                  //   scrollDirection: Axis.horizontal,
                                  //   itemCount: 10,
                                  //   itemBuilder:
                                  //       (BuildContext context, int index) {
                                  //     return const Row(
                                  //       children: [
                                  //         TableArea(
                                  //           label: 'Outdoor',
                                  //         ),
                                  //         SizedBox(
                                  //           width: 18,
                                  //         ),
                                  //       ],
                                  //     );
                                  //   },
                                  //   //
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     color: Utils.secondaryColor,
                                  //   //     borderRadius:
                                  //   //         const BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //     boxShadow: [
                                  //   //       BoxShadow(
                                  //   //         color: Utils.secondaryColor
                                  //   //             .withOpacity(0.5),
                                  //   //         blurRadius: 9.72,
                                  //   //         offset: const Offset(0, 5),
                                  //   //       ),
                                  //   //     ],
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading1,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  //   // SizedBox(
                                  //   //   width: 18,
                                  //   // ),
                                  //   // Container(
                                  //   //   height: 49.43,
                                  //   //   width: 181.97,
                                  //   //   decoration: BoxDecoration(
                                  //   //     border: Border.all(
                                  //   //         width: 1,
                                  //   //         color: Utils.secondaryColor),
                                  //   //     borderRadius: BorderRadius.all(
                                  //   //       Radius.circular(14),
                                  //   //     ),
                                  //   //   ),
                                  //   //   child: Center(
                                  //   //     child: Text(
                                  //   //       'Outdoor',
                                  //   //       style: Utils.heading2,
                                  //   //     ),
                                  //   //   ),
                                  //   // ),
                                  // ),

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
                                            const SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                // Expanded(
                                //   flex: 8,
                                //   child: GridView.builder(
                                //     gridDelegate:
                                //         const SliverGridDelegateWithFixedCrossAxisCount(
                                //       crossAxisCount: 4,
                                //       childAspectRatio: 1.35,
                                //       crossAxisSpacing: 28,
                                //       mainAxisSpacing: 24,
                                //     ),
                                //     // itemCount: 15,
                                //     itemCount: tables.length,
                                //     itemBuilder: (context, index) {
                                //       return TableCard(
                                //         tableName: "T3",
                                //         seatNumber: 4,
                                //         borderColor: Utils.availabeTableColor,
                                //         tableCardColor: Utils.primaryColor,
                                //       );
                                //     },
                                //   ),
                                // ),

                                Expanded(
                                  flex: 8,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 1.35,
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

                                const SizedBox(
                                  height: 4,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Container(
                                      //   height: 41.9,
                                      //   width: 181.97,
                                      //   padding: const EdgeInsets.symmetric(
                                      //       horizontal: 12, vertical: 6),
                                      //   decoration: BoxDecoration(
                                      //     border: Border.all(
                                      //       width: 1,
                                      //       color: Utils.secondaryColor
                                      //           .withOpacity(.40),
                                      //     ),
                                      //     color: Utils.primaryColor,
                                      //     borderRadius: BorderRadius.all(
                                      //       Radius.circular(14),
                                      //     ),
                                      //   ),
                                      //   child: Row(
                                      //     mainAxisSize: MainAxisSize.min,
                                      //     children: [
                                      //       Expanded(
                                      //         flex: 4,
                                      //         child: Row(
                                      //           children: [
                                      //             CircleAvatar(
                                      //               radius: 7,
                                      //               backgroundColor: Utils
                                      //                   .availabeTableColor,
                                      //             ),
                                      //             const SizedBox(width: 10),
                                      //             Text(
                                      //               'Free',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //       Expanded(
                                      //         flex: 1,
                                      //         child: Row(
                                      //           children: [
                                      //             Container(
                                      //               height: 16,
                                      //               width: 1.2,
                                      //               color: Utils.secondaryColor
                                      //                   .withOpacity(.40),
                                      //             ),
                                      //             const SizedBox(width: 8),
                                      //             Text(
                                      //               '5',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      TableStatusWidget(
                                        color: Utils.availabeTableColor,
                                        text: 'Free',
                                        seatNumber: '4',
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      // Container(
                                      //   height: 41.9,
                                      //   width: 181.97,
                                      //   padding: const EdgeInsets.symmetric(
                                      //       horizontal: 12, vertical: 6),
                                      //   decoration: BoxDecoration(
                                      //     border: Border.all(
                                      //       width: 1,
                                      //       color: Utils.secondaryColor
                                      //           .withOpacity(.40),
                                      //     ),
                                      //     color: Utils.primaryColor,
                                      //     borderRadius: BorderRadius.all(
                                      //       Radius.circular(14),
                                      //     ),
                                      //   ),
                                      //   child: Row(
                                      //     mainAxisSize: MainAxisSize.min,
                                      //     children: [
                                      //       Expanded(
                                      //         flex: 4,
                                      //         child: Row(
                                      //           children: [
                                      //             CircleAvatar(
                                      //               radius: 7,
                                      //               backgroundColor: Utils
                                      //                   .reservedTableColor,
                                      //             ),
                                      //             const SizedBox(width: 10),
                                      //             Text(
                                      //               'Reserved',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //       Expanded(
                                      //         flex: 1,
                                      //         child: Row(
                                      //           children: [
                                      //             Container(
                                      //               height: 16,
                                      //               width: 1.2,
                                      //               color: Utils.secondaryColor
                                      //                   .withOpacity(.40),
                                      //             ),
                                      //             const SizedBox(width: 8),
                                      //             Text(
                                      //               '5',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      TableStatusWidget(
                                        color: Utils.reservedTableColor,
                                        text: 'Reserved',
                                        seatNumber: '5',
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      // Container(
                                      //   height: 41.9,
                                      //   width: 181.97,
                                      //   padding: const EdgeInsets.symmetric(
                                      //       horizontal: 12, vertical: 6),
                                      //   decoration: BoxDecoration(
                                      //     border: Border.all(
                                      //       width: 1,
                                      //       color: Utils.secondaryColor
                                      //           .withOpacity(.40),
                                      //     ),
                                      //     color: Utils.primaryColor,
                                      //     borderRadius: BorderRadius.all(
                                      //       Radius.circular(14),
                                      //     ),
                                      //   ),
                                      //   child: Row(
                                      //     mainAxisSize: MainAxisSize.min,
                                      //     children: [
                                      //       Expanded(
                                      //         flex: 4,
                                      //         child: Row(
                                      //           children: [
                                      //             CircleAvatar(
                                      //               radius:
                                      //                   7, // Adjust size of the dot
                                      //               backgroundColor:
                                      //                   Utils.bookedTableColor,
                                      //             ),
                                      //             const SizedBox(width: 10),
                                      //             Text(
                                      //               'Booked',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //       Expanded(
                                      //         flex: 1,
                                      //         child: Row(
                                      //           children: [
                                      //             Container(
                                      //               height: 16,
                                      //               width: 1.2,
                                      //               color: Utils.secondaryColor
                                      //                   .withOpacity(.40),
                                      //             ),
                                      //             const SizedBox(width: 8),
                                      //             Text(
                                      //               '5',
                                      //               style: Utils.heading3,
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
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
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 3.5,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),

                                  GestureDetector(
                                    onTap: () {
                                      print('sdfgsgsd');
                                    },
                                    child: Container(
                                      width: 232,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        //border: Border.all(width: 0.1,color: Color(0xffff50525F),),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14),
                                        ),
                                        color: Utils.primaryColor,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Utils.secondaryColor.withOpacity(0.5),
                                        //     blurRadius: 38,
                                        //     spreadRadius: -10,  // Negative spread radius for inner shadow effect
                                        //     offset: const Offset(0, -20),  // Adjust the direction of the shadow
                                        //   ),
                                        // ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14),
                                        ),
                                        child: Container(
                                          color: Utils.primaryColor,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(width: 0.4,color: Color(0xffff50525F),),
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(14),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Utils.secondaryColor.withOpacity(0.4),
                                                        blurRadius:9.72,
                                                        spreadRadius: 0,  // Negative spread radius for inner shadow effect
                                                        offset: const Offset(0,2), // Inner shadow effect
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 12),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.notifications,size: 28,
                                                      color: Utils.black,
                                                    ),
                                                    const SizedBox(width: 30),
                                                    Text(
                                                      textAlign: TextAlign.center,
                                                      'Notification',
                                                      style: Utils.heading4,
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

                                  SizedBox(height: 16,),
                                  GestureDetector(
                                    onTap: () {
                                      print('sdfgsgsd');
                                    },
                                    child: Container(
                                      width: 232,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        //border: Border.all(width: 0.1,color: Color(0xffff50525F),),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14),
                                        ),
                                        color: Utils.primaryColor,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Utils.secondaryColor.withOpacity(0.5),
                                        //     blurRadius: 38,
                                        //     spreadRadius: -10,  // Negative spread radius for inner shadow effect
                                        //     offset: const Offset(0, -20),  // Adjust the direction of the shadow
                                        //   ),
                                        // ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14),
                                        ),
                                        child: Container(
                                          color: Utils.primaryColor,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(width: 0.4,color: Color(0xffff50525F),),
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(14),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Utils.secondaryColor.withOpacity(0.4),
                                                        blurRadius:9.72,
                                                        spreadRadius: 0,  // Negative spread radius for inner shadow effect
                                                        offset: const Offset(0,2), // Inner shadow effect
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 12),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.add_circle_outline,size: 28,
                                                      color: Utils.black,
                                                    ),
                                                    SizedBox(width:30,),
                                                    Text(
                                                      textAlign: TextAlign.center,
                                                      'New Order',
                                                      style: Utils.heading4,
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
                                  SizedBox(height: 16,),
                                  Container(
                                    width: 232,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      //border: Border.all(width: 0.1,color: Color(0xffff50525F),),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14),
                                      ),
                                      color: Utils.primaryColor,
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Utils.secondaryColor.withOpacity(0.5),
                                      //     blurRadius: 38,
                                      //     spreadRadius: -10,  // Negative spread radius for inner shadow effect
                                      //     offset: const Offset(0, -20),  // Adjust the direction of the shadow
                                      //   ),
                                      // ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14),
                                      ),
                                      child: Container(
                                        color: Utils.primaryColor,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(width: 0.4,color: Color(0xffff50525F),),
                                                  color: Colors.transparent,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(14),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Utils.secondaryColor.withOpacity(0.4),
                                                      blurRadius:9.72,
                                                      spreadRadius: 0,  // Negative spread radius for inner shadow effect
                                                      offset: const Offset(0,2), // Inner shadow effect
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 37,vertical: 12),
                                              child:Text(
                                                textAlign: TextAlign.center,
                                                'Number Not Found',
                                                style: Utils.heading4,
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
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.9,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(14),
                                    ),
                                  ),
                                  child: Column(),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.9,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(14),
                                    ),
                                  ),
                                  child: Column(),
                                ),
                              ],
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
