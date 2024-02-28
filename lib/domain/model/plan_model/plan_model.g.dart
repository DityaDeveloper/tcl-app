// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanModel _$$_PlanModelFromJson(Map<String, dynamic> json) => _$_PlanModel(
      id: json['id'] as int? ?? 0,
      plan: json['plan'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_by: json['updated_by'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PlanModelToJson(_$_PlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan': instance.plan,
      'created_at': instance.created_at,
      'updated_by': instance.updated_by,
    };
