import 'package:action_panel/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TableCard extends StatelessWidget {
  final String tableName;
  final int seatNumber;
  final Color tableCardColor;
  final Color borderColor;

  const TableCard({
    Key? key,
    required this.tableName,
    required this.seatNumber,
    required this.tableCardColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.64,
      height: 138.39,
      decoration: BoxDecoration(
        color: tableCardColor,
        borderRadius: Utils.tableCardRadius,
        border: Border.all(
          color: borderColor,
          width: 4,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            color: Colors.green,
            'assets/table.png',
            width: 82.55,
            height: 57.65,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                tableName,
                style:Utils.tableTextStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    seatNumber.toString(),
                    style: Utils.tableTextStyle,
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.people, size: 25),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
