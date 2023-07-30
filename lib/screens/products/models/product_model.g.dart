// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String?,
      productID: json['productID'] as int?,
      name: json['name'] as String?,
      count: json['count'] as int?,
      desc: json['desc'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
      specification: (json['specification'] as List<dynamic>?)
          ?.map((e) => Specification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productID': instance.productID,
      'name': instance.name,
      'count': instance.count,
      'desc': instance.desc,
      'price': instance.price,
      'image': instance.image,
      'specification': instance.specification,
    };

Specification _$SpecificationFromJson(Map<String, dynamic> json) =>
    Specification(
      name: json['name'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SpecificationToJson(Specification instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
