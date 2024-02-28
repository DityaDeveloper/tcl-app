import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  //const HomeMenuModel._();
  const factory UserModel({
   
    @Default(0) int id,
    @Default('') String email,
    @Default('') String password,
    @Default('') String username,
    @Default('') String createdAt,
    @Default(0) int updatedBy,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

