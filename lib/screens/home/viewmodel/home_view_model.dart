import 'package:flutter/material.dart';
import 'package:goapitest/screens/products/models/product_model.dart';
import 'package:goapitest/service/product_service.dart';

final class HomeViewModel with ChangeNotifier {
  ProductModel? _productModel;
  List<ProductModel>? _productModels;

  ProductModel? get productModel => _productModel;
  List<ProductModel>? get productModels => _productModels;

  void setProductModel() async {
    _productModels = await ProductService.getProducts();

    _productModel = _productModels?.first;
    notifyListeners();
  }
}
