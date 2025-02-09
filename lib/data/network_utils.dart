import 'dart:convert';
import 'dart:ui';

import 'package:http/http.dart' as http;

class NetworkUtils {
  ///Get request
  static Future<dynamic> getMethod(String url, {VoidCallback? onUnauthorized})async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        if (onUnauthorized != null){
          onUnauthorized();
        }

      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e);
    }
  }

  ///post request
   Future<dynamic> postMethod(String url, {Map<String, String>? body, VoidCallback? onUnauthorized}) async {
    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-Type" : "application/json"
        },
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        if (onUnauthorized != null){
          onUnauthorized();
        }

      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e);
    }
  }
}
