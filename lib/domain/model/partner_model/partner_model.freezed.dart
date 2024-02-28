// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerModel _$PartnerModelFromJson(Map<String, dynamic> json) {
  return _PartnerModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get updated_by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerModelCopyWith<PartnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerModelCopyWith<$Res> {
  factory $PartnerModelCopyWith(
          PartnerModel value, $Res Function(PartnerModel) then) =
      _$PartnerModelCopyWithImpl<$Res, PartnerModel>;
  @useResult
  $Res call({int id, String name, String created_at, int updated_by});
}

/// @nodoc
class _$PartnerModelCopyWithImpl<$Res, $Val extends PartnerModel>
    implements $PartnerModelCopyWith<$Res> {
  _$PartnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_by: null == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerModelCopyWith<$Res>
    implements $PartnerModelCopyWith<$Res> {
  factory _$$_PartnerModelCopyWith(
          _$_PartnerModel value, $Res Function(_$_PartnerModel) then) =
      __$$_PartnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String created_at, int updated_by});
}

/// @nodoc
class __$$_PartnerModelCopyWithImpl<$Res>
    extends _$PartnerModelCopyWithImpl<$Res, _$_PartnerModel>
    implements _$$_PartnerModelCopyWith<$Res> {
  __$$_PartnerModelCopyWithImpl(
      _$_PartnerModel _value, $Res Function(_$_PartnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_$_PartnerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_by: null == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerModel implements _PartnerModel {
  const _$_PartnerModel(
      {this.id = 0, this.name = '', this.created_at = '', this.updated_by = 0});

  factory _$_PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final int updated_by;

  @override
  String toString() {
    return 'PartnerModel(id: $id, name: $name, created_at: $created_at, updated_by: $updated_by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, created_at, updated_by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerModelCopyWith<_$_PartnerModel> get copyWith =>
      __$$_PartnerModelCopyWithImpl<_$_PartnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerModelToJson(
      this,
    );
  }
}

abstract class _PartnerModel implements PartnerModel {
  const factory _PartnerModel(
      {final int id,
      final String name,
      final String created_at,
      final int updated_by}) = _$_PartnerModel;

  factory _PartnerModel.fromJson(Map<String, dynamic> json) =
      _$_PartnerModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get created_at;
  @override
  int get updated_by;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerModelCopyWith<_$_PartnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
