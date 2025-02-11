import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box getDmPath() => Hive.box('dm-path');
}
