import 'dart:convert';

import 'package:http/http.dart' as http;

class putService {
  Future<dynamic> putMethod(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    http.Response response = await http
        .put(Uri.parse('https://fakestoreapi.com/products/id'), body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    }, headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer ',
      'Accept': 'application/json'
    });

    dynamic data = await jsonDecode(response.body);
    print('this is the response $response');
    return data;
  }
}
