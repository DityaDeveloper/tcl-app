// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengiriman_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PengirimanModel _$$_PengirimanModelFromJson(Map<String, dynamic> json) =>
    _$_PengirimanModel(
      id: json['id'] as int? ?? 0,
      pengiriman_type: json['pengiriman_type'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_by: json['updated_by'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PengirimanModelToJson(_$_PengirimanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pengiriman_type': instance.pengiriman_type,
      'created_at': instance.created_at,
      'updated_by': instance.updated_by,
    };
