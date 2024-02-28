// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'po_model.freezed.dart';
part 'po_model.g.dart';

@freezed
class PoModel with _$PoModel {
  //const HomeMenuModel._();
  const factory PoModel({
   
    @Default(0) int id,
    @Default('') String po_type,
    @Default('') String created_at,
    @Default(0) int updated_by,
  }) = _PoModel;

  factory PoModel.fromJson(Map<String, dynamic> json) =>
      _$PoModelFromJson(json);
}

