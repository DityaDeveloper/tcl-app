// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.freezed.dart';
part 'plan_model.g.dart';

@freezed
class PlanModel with _$PlanModel {
  //const HomeMenuModel._();
  const factory PlanModel({
   
    @Default(0) int id,
    @Default('') String plan,
    @Default('') String created_at,
    @Default(0) int updated_by,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);
}

