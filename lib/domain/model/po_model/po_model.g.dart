// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'po_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PoModel _$$_PoModelFromJson(Map<String, dynamic> json) => _$_PoModel(
      id: json['id'] as int? ?? 0,
      po_type: json['po_type'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_by: json['updated_by'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PoModelToJson(_$_PoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'po_type': instance.po_type,
      'created_at': instance.created_at,
      'updated_by': instance.updated_by,
    };
