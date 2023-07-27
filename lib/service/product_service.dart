import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:goapitest/base/constants/enums/path_enums.dart';
import '../products/models/product_model.dart';

final class ProductService {
  ProductService._();
  static const String baseUrl = 'http://127.0.0.1:8000/';

  static final Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      baseUrl: baseUrl,
    ),
  )..interceptors.add(
      LogInterceptor(responseBody: true),
    );

  static Future<List<ProductModel>> getProducts() async {
    final response = await dio.get(PathEnums.products.name);
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

  static Future<bool> updateProductName({
    required String value,
    required int id,
  }) async {
    if (id.toString().isNotEmpty && value.isNotEmpty) {
      final response = await dio.patch('${PathEnums.products.name}/$id');
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
