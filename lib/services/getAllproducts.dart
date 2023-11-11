import 'package:store_app/models/product%20model.dart';

import '../models/API class.dart';

class GetAllproducts {
  Future<List<ProductModel>> getAllproducts() async {
    API api = API();
    List<ProductModel> data = [];

    List<dynamic> allProduct =
        await api.get(url: 'https://fakestoreapi.com/products');

    for (int i = 0; i < allProduct.length; i++) {
      data.add(ProductModel.fromJson(allProduct[i]));
    }
    print(data);
    return data;
  }
}
