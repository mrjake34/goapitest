import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String? id;
  final String? name;
  final String? description;
  final String? image;
  final double? price;
  final String? quantity;

  ProductModel({this.id, this.name, this.description, this.image, this.price, this.quantity});

  Map<String, dynamic> toMap() => _$ProductModelToJson(this);

  factory ProductModel.fromMap(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
