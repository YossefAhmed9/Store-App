import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      dynamic data = await jsonDecode(response.body);

      return data;
    } else {
      throw Exception('Status code error ${response.statusCode}');
    }
  }
}
