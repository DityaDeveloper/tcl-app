// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pengiriman_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PengirimanModel _$PengirimanModelFromJson(Map<String, dynamic> json) {
  return _PengirimanModel.fromJson(json);
}

/// @nodoc
mixin _$PengirimanModel {
  int get id => throw _privateConstructorUsedError;
  String get pengiriman_type => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get updated_by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PengirimanModelCopyWith<PengirimanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PengirimanModelCopyWith<$Res> {
  factory $PengirimanModelCopyWith(
          PengirimanModel value, $Res Function(PengirimanModel) then) =
      _$PengirimanModelCopyWithImpl<$Res, PengirimanModel>;
  @useResult
  $Res call(
      {int id, String pengiriman_type, String created_at, int updated_by});
}

/// @nodoc
class _$PengirimanModelCopyWithImpl<$Res, $Val extends PengirimanModel>
    implements $PengirimanModelCopyWith<$Res> {
  _$PengirimanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pengiriman_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pengiriman_type: null == pengiriman_type
          ? _value.pengiriman_type
          : pengiriman_type // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PengirimanModelCopyWith<$Res>
    implements $PengirimanModelCopyWith<$Res> {
  factory _$$_PengirimanModelCopyWith(
          _$_PengirimanModel value, $Res Function(_$_PengirimanModel) then) =
      __$$_PengirimanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String pengiriman_type, String created_at, int updated_by});
}

/// @nodoc
class __$$_PengirimanModelCopyWithImpl<$Res>
    extends _$PengirimanModelCopyWithImpl<$Res, _$_PengirimanModel>
    implements _$$_PengirimanModelCopyWith<$Res> {
  __$$_PengirimanModelCopyWithImpl(
      _$_PengirimanModel _value, $Res Function(_$_PengirimanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pengiriman_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_$_PengirimanModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pengiriman_type: null == pengiriman_type
          ? _value.pengiriman_type
          : pengiriman_type // ignore: cast_nullable_to_non_nullable
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
class _$_PengirimanModel implements _PengirimanModel {
  const _$_PengirimanModel(
      {this.id = 0,
      this.pengiriman_type = '',
      this.created_at = '',
      this.updated_by = 0});

  factory _$_PengirimanModel.fromJson(Map<String, dynamic> json) =>
      _$$_PengirimanModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String pengiriman_type;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final int updated_by;

  @override
  String toString() {
    return 'PengirimanModel(id: $id, pengiriman_type: $pengiriman_type, created_at: $created_at, updated_by: $updated_by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PengirimanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pengiriman_type, pengiriman_type) ||
                other.pengiriman_type == pengiriman_type) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pengiriman_type, created_at, updated_by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PengirimanModelCopyWith<_$_PengirimanModel> get copyWith =>
      __$$_PengirimanModelCopyWithImpl<_$_PengirimanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PengirimanModelToJson(
      this,
    );
  }
}

abstract class _PengirimanModel implements PengirimanModel {
  const factory _PengirimanModel(
      {final int id,
      final String pengiriman_type,
      final String created_at,
      final int updated_by}) = _$_PengirimanModel;

  factory _PengirimanModel.fromJson(Map<String, dynamic> json) =
      _$_PengirimanModel.fromJson;

  @override
  int get id;
  @override
  String get pengiriman_type;
  @override
  String get created_at;
  @override
  int get updated_by;
  @override
  @JsonKey(ignore: true)
  _$$_PengirimanModelCopyWith<_$_PengirimanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
