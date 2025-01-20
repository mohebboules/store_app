import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    const String url = 'https://fakestoreapi.com/products/categories';

    List<dynamic> data = await Api().get(url: url, token: null);
    return data;
  }
}
