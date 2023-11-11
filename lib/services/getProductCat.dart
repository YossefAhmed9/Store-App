import 'package:store_app/models/product%20model.dart';

import '../models/API class.dart';

class getProductsCategory {
  Future<dynamic> getAllproductsCat({required String categoryName}) async {
    API api = API();

    List<dynamic> allProductCat = await api.get(
        url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> data = [];

    for (int i = 0; i < allProductCat.length; i++) {
      data.add(ProductModel.fromJson(allProductCat[i]));
    }

    return data;
  }
}
