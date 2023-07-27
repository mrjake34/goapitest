import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String? objectId;
  final int? productID;
  final String? name;
  final String? desc;
  final String? image;
  final double? price;
  final int? count;

  ProductModel({this.objectId, this.productID, this.name, this.desc, this.image, this.price, this.count});

  Map<String, dynamic> toMap() => _$ProductModelToJson(this);

  factory ProductModel.fromMap(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
