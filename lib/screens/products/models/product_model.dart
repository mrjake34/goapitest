// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String? id;
  final int? productID;
  final String? name;
  final int? count;
  final int? discount;
  final String? desc;
  final String? category;
  final String? standOut;
  final double? price;
  final String? image;
  final List<Specification>? specification;

  ProductModel({
    this.id,
    this.productID,
    this.name,
    this.count,
    this.discount,
    this.desc,
    this.category,
    this.standOut,
    this.price,
    this.image,
    this.specification,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  ProductModel copyWith({
    String? id,
    int? productID,
    String? name,
    int? count,
    int? discount,
    String? desc,
    String? category,
    String? standOut,
    double? price,
    String? image,
    List<Specification>? specification,
  }) {
    return ProductModel(
      id: id ?? this.id,
      productID: productID ?? this.productID,
      name: name ?? this.name,
      count: count ?? this.count,
      discount: discount ?? this.discount,
      desc: desc ?? this.desc,
      category: category ?? this.category,
      standOut: standOut ?? this.standOut,
      price: price ?? this.price,
      image: image ?? this.image,
      specification: specification ?? this.specification,
    );
  }
}

@JsonSerializable()
class Specification {
  final String? name;
  final List<String>? values;

  Specification({
    this.name,
    this.values,
  });

  factory Specification.fromJson(Map<String, dynamic> json) => _$SpecificationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecificationToJson(this);

  Specification copyWith({
    String? name,
    List<String>? values,
  }) {
    return Specification(
      name: name ?? this.name,
      values: values ?? this.values,
    );
  }
}
