import 'package:goapitest/screens/products/models/product_model.dart';
import 'package:goapitest/service/product_service.dart';
import 'package:test/test.dart';

void main() {
  group('ProductService', () {
    test('getProducts', () async {
      final products = await ProductService.getProducts();
      expect(products, isA<List<ProductModel>>());
    });
  });
}
