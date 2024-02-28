// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_model.freezed.dart';
part 'partner_model.g.dart';

@freezed
class PartnerModel with _$PartnerModel {
  //const HomeMenuModel._();
  const factory PartnerModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String created_at,
    @Default(0) int updated_by,
  }) = _PartnerModel;

  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);
}
