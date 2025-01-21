import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> productsList = [];
    const String url = 'https://fakestoreapi.com/products';
    List<dynamic> data = await Api().get(url: url, token: null);

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
