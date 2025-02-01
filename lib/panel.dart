import 'package:action_panel/utils/styles.dart';
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
                    Icon(
                      Icons.menu,
                      size: 34,
                      color: Utils.secondaryColor,
                    ),
                    Text(
                      'Action Panel',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Utils.secondaryColor),
                    ),
                    Icon(
                      Icons.home,
                      size: 34,
                      color: Utils.secondaryColor,
                    ),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            color: Utils.secondaryColor,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Utils.secondaryColor
                                                    .withOpacity(0.3),
                                                blurRadius: 9.72,
                                                offset: const Offset(2, 4),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading1,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 49.43,
                                          width: 181.97,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Utils.secondaryColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Outdoor',
                                              style: Utils.heading2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 1.4,
                                      crossAxisSpacing: 26,
                                      mainAxisSpacing: 24,
                                    ),
                                    itemCount: 15,
                                    itemBuilder: (context, index) {
                                      return TableCard(
                                        tableName: "T3",
                                        seatNumber: 4,
                                        borderColor: Utils.availabeTableColor,
                                        tableCardColor: Utils.primaryColor,
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
                                      Container(
                                        height: 41.9,
                                        width: 181.97,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Utils.secondaryColor
                                                .withOpacity(.40),
                                          ),
                                          color: Utils.primaryColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius:
                                                        7, // Adjust size of the dot
                                                    backgroundColor:
                                                        Utils.availabeTableColor,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    'Free',
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
                                                    color: Utils.secondaryColor
                                                        .withOpacity(.40),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    '5',
                                                    style: Utils.heading3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 41.9,
                                        width: 181.97,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Utils.secondaryColor
                                                .withOpacity(.40),
                                          ),
                                          color: Utils.primaryColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius:
                                                        7, // Adjust size of the dot
                                                    backgroundColor:
                                                        Utils.reservedTableColor,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    'Reserved',
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
                                                    color: Utils.secondaryColor
                                                        .withOpacity(.40),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    '5',
                                                    style: Utils.heading3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 41.9,
                                        width: 181.97,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Utils.secondaryColor
                                                .withOpacity(.40),
                                          ),
                                          color: Utils.primaryColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius:
                                                        7, // Adjust size of the dot
                                                    backgroundColor:
                                                        Utils.bookedTableColor,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    'Booked',
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
                                                    color: Utils.secondaryColor
                                                        .withOpacity(.40),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    '5',
                                                    style: Utils.heading3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
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
                              child: Column(),
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
