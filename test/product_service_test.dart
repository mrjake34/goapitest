import 'package:goapitest/products/models/product_model.dart';
import 'package:goapitest/service/product_service.dart';
import 'package:test/test.dart';

void main() {
  group('ProductService', () {
    test('getProducts', () async {
      final productService = ProductService();
      final products = await productService.getProducts();
      expect(products, isA<List<ProductModel>>());
    });
  });
}
