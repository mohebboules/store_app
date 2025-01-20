import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AddPoductService {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    const String url = 'https://fakestoreapi.com/products';
    Map<String, dynamic> data = await Api().post(
      url: url,
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
      token: null,
    );
    return ProductModel.fromJson(data);
  }
}
