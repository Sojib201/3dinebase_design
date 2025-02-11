import 'dart:convert';
import 'package:http/http.dart' as http;

import '../hive/boxes.dart';
import '../model/user_model.dart';
import '../utils/app_version.dart';
import 'apis.dart';

class apiService {
  // Future<bool> loginRequest(Formvalues) async {
  //   var url = Uri.parse("https://e01.yeapps.com/dmpath/dinebase/base-url?cid=DINEBASE");
  //   var postBody = json.encode(Formvalues);
  //   var postHeader = {"Content-Type": "application/json"};
  //   var response = await http.post(url, headers: postHeader, body: postBody);
  //   var resultCode = response.statusCode;
  //   var resultBody = json.decode(response.body);
  //
  //   if (resultCode == 200 && resultBody['status'] == "success") {
  //     print('success');
  //     return true;
  //   } else {
  //    print('error');
  //     return false;
  //   }
  // }

  Future<void> dmPath(String cid) async {
    try {
      String url = "https://e01.yeapps.com/dmpath/dinebase/base-url?cid=$cid";

      final response = await http.get(Uri.parse(url));

      Map<String, dynamic> data = jsonDecode(response.body);
      if (data['status'] == "Success") {
        Boxes.getDmPath().put("base_url", data['base_url'].toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<UserModel> login(String cid, String userId, String password) async {
    String url = Apis().loginUrl;

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'cid': cid,
        'userId': userId,
        'password': password,
        "app_version": appVersion
      }),
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Login failed');
    }
  }
}
