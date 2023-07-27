// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      objectId: json['_id'] as String?,
      productID: json['productID'] as int?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) => <String, dynamic>{
      '_id': instance.objectId,
      'productID': instance.productID,
      'name': instance.name,
      'desc': instance.desc,
      'image': instance.image,
      'price': instance.price,
      'count': instance.count,
    };
