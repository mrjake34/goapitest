import 'package:flutter/material.dart';

import '../../../service/product_service.dart';

final class ProductDetailProvider extends ChangeNotifier {
  String? _name;

  String? get getName => _name;
  Future<void> setName(String value, int id) async {
    final response = await ProductService.updateProductName(
      value: value,
      id: id,
    );
    if (response) {
      _name = value;
      notifyListeners();
    }
  }
}
