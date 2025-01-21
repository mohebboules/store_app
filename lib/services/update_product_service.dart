import 'dart:developer';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required String id,
  }) async {
    log(id);
    String url = 'https://fakestoreapi.com/products/$id';
    Map<String, dynamic> data = await Api().put(
      url: url,
      body: {
        'id': id,
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
