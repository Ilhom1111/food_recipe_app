// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Departments _$DepartmentsFromJson(Map<String, dynamic> json) {
  return _Departments.fromJson(json);
}

/// @nodoc
mixin _$Departments {
  String get idCategory => throw _privateConstructorUsedError;
  String get strCategory => throw _privateConstructorUsedError;
  String get strCategoryThumb => throw _privateConstructorUsedError;
  String get strCategoryDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentsCopyWith<Departments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentsCopyWith<$Res> {
  factory $DepartmentsCopyWith(
          Departments value, $Res Function(Departments) then) =
      _$DepartmentsCopyWithImpl<$Res, Departments>;
  @useResult
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class _$DepartmentsCopyWithImpl<$Res, $Val extends Departments>
    implements $DepartmentsCopyWith<$Res> {
  _$DepartmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_value.copyWith(
      idCategory: null == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentsImplCopyWith<$Res>
    implements $DepartmentsCopyWith<$Res> {
  factory _$$DepartmentsImplCopyWith(
          _$DepartmentsImpl value, $Res Function(_$DepartmentsImpl) then) =
      __$$DepartmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class __$$DepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentsCopyWithImpl<$Res, _$DepartmentsImpl>
    implements _$$DepartmentsImplCopyWith<$Res> {
  __$$DepartmentsImplCopyWithImpl(
      _$DepartmentsImpl _value, $Res Function(_$DepartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_$DepartmentsImpl(
      idCategory: null == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentsImpl implements _Departments {
  const _$DepartmentsImpl(
      {required this.idCategory,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});

  factory _$DepartmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentsImplFromJson(json);

  @override
  final String idCategory;
  @override
  final String strCategory;
  @override
  final String strCategoryThumb;
  @override
  final String strCategoryDescription;

  @override
  String toString() {
    return 'Departments(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentsImpl &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idCategory, strCategory,
      strCategoryThumb, strCategoryDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      __$$DepartmentsImplCopyWithImpl<_$DepartmentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentsImplToJson(
      this,
    );
  }
}

abstract class _Departments implements Departments {
  const factory _Departments(
      {required final String idCategory,
      required final String strCategory,
      required final String strCategoryThumb,
      required final String strCategoryDescription}) = _$DepartmentsImpl;

  factory _Departments.fromJson(Map<String, dynamic> json) =
      _$DepartmentsImpl.fromJson;

  @override
  String get idCategory;
  @override
  String get strCategory;
  @override
  String get strCategoryThumb;
  @override
  String get strCategoryDescription;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
