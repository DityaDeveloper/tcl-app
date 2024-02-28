// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'truck_model.freezed.dart';
part 'truck_model.g.dart';

@freezed
class TruckModel with _$TruckModel {
  //const HomeMenuModel._();
  const factory TruckModel({
   
    @Default(0) int id,
    @Default('') String truck_type,
    @Default('') String created_at,
    @Default(0) int updated_by,
  }) = _TruckModel;

  factory TruckModel.fromJson(Map<String, dynamic> json) =>
      _$TruckModelFromJson(json);
}

