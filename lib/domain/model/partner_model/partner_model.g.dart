// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartnerModel _$$_PartnerModelFromJson(Map<String, dynamic> json) =>
    _$_PartnerModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_by: json['updated_by'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PartnerModelToJson(_$_PartnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at,
      'updated_by': instance.updated_by,
    };
