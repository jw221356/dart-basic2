// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:untitled/23_12_15/model/store.dart';


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************



Store _$StoreFromJson(Map<String, dynamic> json) => Store(
  name: json['name'] as String,
  address: json['address'] as String,
  stock: json['stock'] as String,
  type: json['type'] as int,
);

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
  'stock': instance.stock,
  'type': instance.type,
};