// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TruckModel _$$_TruckModelFromJson(Map<String, dynamic> json) =>
    _$_TruckModel(
      id: json['id'] as int? ?? 0,
      truck_type: json['truck_type'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_by: json['updated_by'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TruckModelToJson(_$_TruckModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'truck_type': instance.truck_type,
      'created_at': instance.created_at,
      'updated_by': instance.updated_by,
    };
