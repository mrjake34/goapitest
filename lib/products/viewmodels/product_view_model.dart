import 'package:flutter/material.dart';
import 'package:goapitest/products/models/product_model.dart';
import 'package:goapitest/service/product_service.dart';

final class ProductProvider extends ChangeNotifier {
  List<ProductModel> _productModel = [];

  List<ProductModel> get getProductModel => _productModel;

  Future<void> setProductModel() async {
    _productModel = await ProductService().getProducts();
    notifyListeners();
  }
}
