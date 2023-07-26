import 'dart:convert';

import 'package:dio/dio.dart';
import '../products/models/product_model.dart';

final class ProductService {
  final String _baseUrl = 'http://127.0.0.1:8000/products';

  final Dio dio = Dio();

  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get(_baseUrl);
    if (response.statusCode == 200) {
      final List<ProductModel> products = [];
      final jsonDecoded = jsonDecode(response.data);
      for (var element in jsonDecoded) {
        products.add(ProductModel.fromMap(element));
      }
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
