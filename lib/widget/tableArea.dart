// import 'package:flutter/material.dart';
//
// import '../utils/styles.dart';
//
// class TableArea extends StatefulWidget {
//   final String label;
//
//
//   const TableArea({
//     super.key,
//     required this.label,
//   });
//
//   @override
//   _TableAreaState createState() => _TableAreaState();
// }
//
// class _TableAreaState extends State<TableArea> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isSelected = true;
//         });
//       },
//       child: Container(
//         height: 49.43,
//         width: 181.97,
//         decoration: BoxDecoration(
//           border: Border.all(width: 1, color: Utils.secondaryColor),
//           color: isSelected ? Utils.secondaryColor : Utils.primaryColor,
//           borderRadius: const BorderRadius.all(Radius.circular(14)),
//           boxShadow: isSelected
//               ? [
//             BoxShadow(
//               color: Utils.secondaryColor.withOpacity(0.5),
//               blurRadius: 9.72,
//               offset: const Offset(0, 5),
//             ),
//           ]
//               : [],
//         ),
//         child: Center(
//           child: Text(
//             widget.label,
//             style: isSelected ? Utils.heading1 : Utils.heading2,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class TableArea extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const TableArea({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 49.43,
        width: 181.97,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Utils.secondaryColor),
          color: isSelected ? Utils.secondaryColor : Utils.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Utils.secondaryColor.withOpacity(0.5),
                    blurRadius: 9.72,
                    offset: const Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            label,
            style: isSelected ? Utils.heading1 : Utils.heading2,
          ),
        ),
      ),
    );
  }
}
