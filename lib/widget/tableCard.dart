import 'dart:ui';

import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  final String tableName;
  final int seatNumber;
  final Color tableColor;
  final Color borderColor;

  const TableCard({
    Key? key,
    required this.tableName,
    required this.seatNumber,
    required this.tableColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 138.39,
      decoration: BoxDecoration(
        color: Utils.primaryColor,
        borderRadius: Utils.tableCardRadius,
        border: Border.all(
          color: borderColor,
          width: 5,
        ),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.75,
                child: SizedBox(
                  height: 90,
                  child: Image.asset('assets/table.png', color: Utils.black),
                ),
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0, sigmaY: -10),
                  child: SizedBox(
                    height: 90,
                    child: Image.asset(
                      'assets/table.png',
                      color: tableColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(tableName, style: Utils.tableTextStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    seatNumber.toString(),
                    style: Utils.tableTextStyle,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.people,
                    size: 30,
                    color: Utils.secondaryColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
