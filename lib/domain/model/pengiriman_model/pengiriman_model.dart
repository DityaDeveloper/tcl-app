// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pengiriman_model.freezed.dart';
part 'pengiriman_model.g.dart';

@freezed
class PengirimanModel with _$PengirimanModel {
  //const HomeMenuModel._();
  const factory PengirimanModel({
   
    @Default(0) int id,
    @Default('') String pengiriman_type,
     @Default('') String created_at,
    @Default(0) int updated_by,
  }) = _PengirimanModel;

  factory PengirimanModel.fromJson(Map<String, dynamic> json) =>
      _$PengirimanModelFromJson(json);
}

