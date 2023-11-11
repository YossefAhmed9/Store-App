import 'package:store_app/models/API%20class.dart';

class allCategories {
  Future<List<dynamic>> getAllcategories() async {
    API api = API();

    List<dynamic> all =
        await api.get(url: 'https://fakestoreapi.com/products/categories');

    return all;
  }
}
