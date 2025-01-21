import 'package:store_app/models/rating_model.dart';

class ProductModel {
  final num id;
  final String title;
  final num price;
  final String description;
  final String image;
  final RatingModel? rating;
  final String category;

  ProductModel({
    required this.category,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    this.rating,
  });
  factory ProductModel.fromJson(jsonData) {
    if (jsonData['price'] is String) {
      jsonData['price'] = num.parse(jsonData['price'] as String);
    }
    if (jsonData['rating'] == null) {
      return ProductModel(
        category: jsonData['category'],
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
      );
    }
    return ProductModel(
      category: jsonData['category'],
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}
