class TableModel {
  final String name;
  final int seats;
  final TableStatus status;

  TableModel({
    required this.name,
    required this.seats,
    required this.status,
  });
}

enum TableStatus { available, booked, reserved }
