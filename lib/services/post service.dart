import 'dart:convert';

import 'package:http/http.dart' as http;

class UpdateProductService {
  Future<dynamic> postMethod({
    required String title,
    required String price,
    required String description,
    required String image,
    //required String category
  }) async {
    http.Response response =
        await http.post(Uri.parse('https://fakestoreapi.com/products'), body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      //'category': category
    }, headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer ',
      'Accept': 'application/json'
    });

    dynamic data = jsonDecode(response.body);

    return data;
  }
}
