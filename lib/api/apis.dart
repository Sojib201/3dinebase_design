import '../hive/boxes.dart';

class Apis {
  late String baseUrl;
  Apis() {
    baseUrl = Boxes.getDmPath().get("base_url").toString();
  }
  String get loginUrl => '$baseUrl/user/login';
}
