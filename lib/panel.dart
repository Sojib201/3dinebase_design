import 'package:action_panel/widget/tableCard.dart';
import 'package:flutter/material.dart';

class ActionPanel extends StatefulWidget {
  const ActionPanel({super.key});

  @override
  State<ActionPanel> createState() => _ActionPanelState();
}

class _ActionPanelState extends State<ActionPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50525F),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                height: 50,
                //height: MediaQuery.of(context).size.height/10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text('Action Panel'),
                    Icon(Icons.home),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
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
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TableCard(

                                            tableName: "T3",
                                            seatNumber: 4,
                                            tableColor: Colors.white,
                                            borderColor: Colors.green,
                                          ),

                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.table_restaurant,
                                                    color: Colors.black,
                                                    size: 40),
                                                SizedBox(height: 5),
                                                Text("T3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18)),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people,
                                                        size: 18),
                                                    SizedBox(width: 5),
                                                    Text("4"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 80,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      color: Colors.red,
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
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Column(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.9,
                                width: MediaQuery.of(context).size.width / 8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                ),
                                child: Column(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.9,
                                width: MediaQuery.of(context).size.width / 8,
                                decoration: BoxDecoration(
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
          ],
        ),
      ),
    );
  }
}
