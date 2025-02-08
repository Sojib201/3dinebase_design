import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TableStatusWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String seatNumber;

  const TableStatusWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.seatNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.9,
      width: 181.97,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Utils.secondaryColor.withOpacity(.40),
        ),
        color: Utils.primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 7,
                  backgroundColor: color,
                ),
                const SizedBox(width: 10),
                Text(
                 text,
                  style: Utils.heading3,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 1.2,
                  color: Utils.secondaryColor.withOpacity(.40),
                ),
                const SizedBox(width: 8),
                Text(
                  seatNumber,
                  style: Utils.heading3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
