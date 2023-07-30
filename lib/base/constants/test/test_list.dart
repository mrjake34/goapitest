import 'package:flutter/material.dart';
import 'package:goapitest/screens/products/models/product_model.dart';

final class TestLists {
  TestLists._();

  static final List<ProductModel> productsListForTestPopularItems = [
    ProductModel(
      productID: 1,
      name: 'Macbook Air 15inch',
      desc: 'Macbook Air 15inch 2020',
      price: 1000,
      image: 'assets/images/macbookair.png',
    ),
    ProductModel(
      productID: 2,
      name: 'Lenovo Ideapad 15inch',
      desc: 'Lenovo Ideapad 15inch 2020',
      price: 1000,
      image: 'assets/images/lenovo-ideapad.webp',
    ),
    ProductModel(
      productID: 3,
      name: 'Huawei Matebook D15',
      desc: 'Huawei Matebook D15 2020',
      price: 1000,
      image: 'assets/images/huawei-matebook-d15.png',
    ),
     ProductModel(
      productID: 4,
      name: 'HP Pavilion 15inch',
      desc: 'HP Pavilion 15inch 2020',
      price: 1000,
      image: 'assets/images/hp.png',
    ),
  ];

  static List<DropdownMenuItem> dropdownMenuEntries = [
    const DropdownMenuItem(
      value: 1,
      child: Text('256GB'),
    ),
    const DropdownMenuItem(
      value: 2,
      child: Text('512GB'),
    ),
    const DropdownMenuItem(
      value: 3,
      child: Text('1TB'),
    ),
    const DropdownMenuItem(
      value: 4,
      child: Text('2TB'),
    ),
  ];
}
