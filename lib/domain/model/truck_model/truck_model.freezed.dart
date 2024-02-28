// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'truck_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TruckModel _$TruckModelFromJson(Map<String, dynamic> json) {
  return _TruckModel.fromJson(json);
}

/// @nodoc
mixin _$TruckModel {
  int get id => throw _privateConstructorUsedError;
  String get truck_type => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get updated_by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TruckModelCopyWith<TruckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckModelCopyWith<$Res> {
  factory $TruckModelCopyWith(
          TruckModel value, $Res Function(TruckModel) then) =
      _$TruckModelCopyWithImpl<$Res, TruckModel>;
  @useResult
  $Res call({int id, String truck_type, String created_at, int updated_by});
}

/// @nodoc
class _$TruckModelCopyWithImpl<$Res, $Val extends TruckModel>
    implements $TruckModelCopyWith<$Res> {
  _$TruckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truck_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      truck_type: null == truck_type
          ? _value.truck_type
          : truck_type // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_TruckModelCopyWith<$Res>
    implements $TruckModelCopyWith<$Res> {
  factory _$$_TruckModelCopyWith(
          _$_TruckModel value, $Res Function(_$_TruckModel) then) =
      __$$_TruckModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String truck_type, String created_at, int updated_by});
}

/// @nodoc
class __$$_TruckModelCopyWithImpl<$Res>
    extends _$TruckModelCopyWithImpl<$Res, _$_TruckModel>
    implements _$$_TruckModelCopyWith<$Res> {
  __$$_TruckModelCopyWithImpl(
      _$_TruckModel _value, $Res Function(_$_TruckModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truck_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_$_TruckModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      truck_type: null == truck_type
          ? _value.truck_type
          : truck_type // ignore: cast_nullable_to_non_nullable
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
class _$_TruckModel implements _TruckModel {
  const _$_TruckModel(
      {this.id = 0,
      this.truck_type = '',
      this.created_at = '',
      this.updated_by = 0});

  factory _$_TruckModel.fromJson(Map<String, dynamic> json) =>
      _$$_TruckModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String truck_type;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final int updated_by;

  @override
  String toString() {
    return 'TruckModel(id: $id, truck_type: $truck_type, created_at: $created_at, updated_by: $updated_by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TruckModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.truck_type, truck_type) ||
                other.truck_type == truck_type) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, truck_type, created_at, updated_by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TruckModelCopyWith<_$_TruckModel> get copyWith =>
      __$$_TruckModelCopyWithImpl<_$_TruckModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TruckModelToJson(
      this,
    );
  }
}

abstract class _TruckModel implements TruckModel {
  const factory _TruckModel(
      {final int id,
      final String truck_type,
      final String created_at,
      final int updated_by}) = _$_TruckModel;

  factory _TruckModel.fromJson(Map<String, dynamic> json) =
      _$_TruckModel.fromJson;

  @override
  int get id;
  @override
  String get truck_type;
  @override
  String get created_at;
  @override
  int get updated_by;
  @override
  @JsonKey(ignore: true)
  _$$_TruckModelCopyWith<_$_TruckModel> get copyWith =>
      throw _privateConstructorUsedError;
}
