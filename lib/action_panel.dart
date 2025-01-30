import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E4A),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              // Left Section (Tables Grid)
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    buildTabBar(),
                    Expanded(child: buildTableGrid()),
                    buildStatusIndicator(),
                  ],
                ),
              ),
              SizedBox(width: 10),
              // Right Section (Side Panel)
              Expanded(flex: 1, child: buildSidePanel()),
            ],
          ),
        ),
      ),
    );
  }

  // Top Navigation Tabs
  Widget buildTabBar() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildTabButton("Outdoor", true),
          buildTabButton("Outdoor", false),
          buildTabButton("Outdoor", false),
          buildTabButton("Outdoor", false),
        ],
      ),
    );
  }

  Widget buildTabButton(String title, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  // Grid of Tables
  Widget buildTableGrid() {
    List<Color> tableColors = [Colors.green, Colors.orange, Colors.yellow];

    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return buildTableCard(tableColors[index % 3]);
      },
    );
  }

  Widget buildTableCard(Color borderColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 3),
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
          Icon(Icons.table_restaurant, color: borderColor, size: 40),
          SizedBox(height: 5),
          Text("T3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.people, size: 18),
              SizedBox(width: 5),
              Text("4"),
            ],
          ),
        ],
      ),
    );
  }

  // Status Indicator Bar
  Widget buildStatusIndicator() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildStatusItem("Free", Colors.green, 5),
          buildStatusItem("Reserved", Colors.yellow, 5),
          buildStatusItem("Booked", Colors.orange, 5),
        ],
      ),
    );
  }

  Widget buildStatusItem(String label, Color color, int count) {
    return Row(
      children: [
        CircleAvatar(radius: 6, backgroundColor: color),
        SizedBox(width: 5),
        Text(label),
        SizedBox(width: 5),
        Text("($count)", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  // Right Side Panel
  Widget buildSidePanel() {
    return Column(
      children: [
        buildDateTimePanel(),
        SizedBox(height: 10),
        buildButtonPanel(),
        SizedBox(height: 10),
        buildDeliveryCollectionPanel(),
      ],
    );
  }

  // Date and Time Panel
  Widget buildDateTimePanel() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text("Jan 28, 2025", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 5),
          Text("12:17 PM", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  // Buttons Panel
  Widget buildButtonPanel() {
    return Column(
      children: [
        buildSideButton("Notification", Icons.notifications),
        buildSideButton("New Order", Icons.add_circle_outline),
        buildSideButton("Number Not Found", Icons.error_outline),
      ],
    );
  }

  Widget buildSideButton(String text, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  // Delivery & Collection Section
  Widget buildDeliveryCollectionPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildDeliveryCollectionCard("Delivery", Icons.delivery_dining, Colors.orange),
        buildDeliveryCollectionCard("Collection", Icons.lock, Colors.black),
      ],
    );
  }

  Widget buildDeliveryCollectionCard(String title, IconData icon, Color iconColor) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Icon(icon, color: iconColor, size: 30),
            SizedBox(height: 5),
            Text("Hasan"),
            Text("01301265125"),
          ],
        ),
      ),
    );
  }
}