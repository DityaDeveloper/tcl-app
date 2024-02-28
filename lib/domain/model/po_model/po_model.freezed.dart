// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'po_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PoModel _$PoModelFromJson(Map<String, dynamic> json) {
  return _PoModel.fromJson(json);
}

/// @nodoc
mixin _$PoModel {
  int get id => throw _privateConstructorUsedError;
  String get po_type => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get updated_by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoModelCopyWith<PoModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoModelCopyWith<$Res> {
  factory $PoModelCopyWith(PoModel value, $Res Function(PoModel) then) =
      _$PoModelCopyWithImpl<$Res, PoModel>;
  @useResult
  $Res call({int id, String po_type, String created_at, int updated_by});
}

/// @nodoc
class _$PoModelCopyWithImpl<$Res, $Val extends PoModel>
    implements $PoModelCopyWith<$Res> {
  _$PoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? po_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      po_type: null == po_type
          ? _value.po_type
          : po_type // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PoModelCopyWith<$Res> implements $PoModelCopyWith<$Res> {
  factory _$$_PoModelCopyWith(
          _$_PoModel value, $Res Function(_$_PoModel) then) =
      __$$_PoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String po_type, String created_at, int updated_by});
}

/// @nodoc
class __$$_PoModelCopyWithImpl<$Res>
    extends _$PoModelCopyWithImpl<$Res, _$_PoModel>
    implements _$$_PoModelCopyWith<$Res> {
  __$$_PoModelCopyWithImpl(_$_PoModel _value, $Res Function(_$_PoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? po_type = null,
    Object? created_at = null,
    Object? updated_by = null,
  }) {
    return _then(_$_PoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      po_type: null == po_type
          ? _value.po_type
          : po_type // ignore: cast_nullable_to_non_nullable
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
class _$_PoModel implements _PoModel {
  const _$_PoModel(
      {this.id = 0,
      this.po_type = '',
      this.created_at = '',
      this.updated_by = 0});

  factory _$_PoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PoModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String po_type;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final int updated_by;

  @override
  String toString() {
    return 'PoModel(id: $id, po_type: $po_type, created_at: $created_at, updated_by: $updated_by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.po_type, po_type) || other.po_type == po_type) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, po_type, created_at, updated_by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoModelCopyWith<_$_PoModel> get copyWith =>
      __$$_PoModelCopyWithImpl<_$_PoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoModelToJson(
      this,
    );
  }
}

abstract class _PoModel implements PoModel {
  const factory _PoModel(
      {final int id,
      final String po_type,
      final String created_at,
      final int updated_by}) = _$_PoModel;

  factory _PoModel.fromJson(Map<String, dynamic> json) = _$_PoModel.fromJson;

  @override
  int get id;
  @override
  String get po_type;
  @override
  String get created_at;
  @override
  int get updated_by;
  @override
  @JsonKey(ignore: true)
  _$$_PoModelCopyWith<_$_PoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
