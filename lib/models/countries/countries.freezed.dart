// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesMeals _$CountriesMealsFromJson(Map<String, dynamic> json) {
  return _CountriesMeals.fromJson(json);
}

/// @nodoc
mixin _$CountriesMeals {
  String get strArea => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesMealsCopyWith<CountriesMeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesMealsCopyWith<$Res> {
  factory $CountriesMealsCopyWith(
          CountriesMeals value, $Res Function(CountriesMeals) then) =
      _$CountriesMealsCopyWithImpl<$Res, CountriesMeals>;
  @useResult
  $Res call({String strArea});
}

/// @nodoc
class _$CountriesMealsCopyWithImpl<$Res, $Val extends CountriesMeals>
    implements $CountriesMealsCopyWith<$Res> {
  _$CountriesMealsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strArea = null,
  }) {
    return _then(_value.copyWith(
      strArea: null == strArea
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesMealsImplCopyWith<$Res>
    implements $CountriesMealsCopyWith<$Res> {
  factory _$$CountriesMealsImplCopyWith(_$CountriesMealsImpl value,
          $Res Function(_$CountriesMealsImpl) then) =
      __$$CountriesMealsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strArea});
}

/// @nodoc
class __$$CountriesMealsImplCopyWithImpl<$Res>
    extends _$CountriesMealsCopyWithImpl<$Res, _$CountriesMealsImpl>
    implements _$$CountriesMealsImplCopyWith<$Res> {
  __$$CountriesMealsImplCopyWithImpl(
      _$CountriesMealsImpl _value, $Res Function(_$CountriesMealsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strArea = null,
  }) {
    return _then(_$CountriesMealsImpl(
      strArea: null == strArea
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesMealsImpl implements _CountriesMeals {
  const _$CountriesMealsImpl({required this.strArea});

  factory _$CountriesMealsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesMealsImplFromJson(json);

  @override
  final String strArea;

  @override
  String toString() {
    return 'CountriesMeals(strArea: $strArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesMealsImpl &&
            (identical(other.strArea, strArea) || other.strArea == strArea));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, strArea);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesMealsImplCopyWith<_$CountriesMealsImpl> get copyWith =>
      __$$CountriesMealsImplCopyWithImpl<_$CountriesMealsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesMealsImplToJson(
      this,
    );
  }
}

abstract class _CountriesMeals implements CountriesMeals {
  const factory _CountriesMeals({required final String strArea}) =
      _$CountriesMealsImpl;

  factory _CountriesMeals.fromJson(Map<String, dynamic> json) =
      _$CountriesMealsImpl.fromJson;

  @override
  String get strArea;
  @override
  @JsonKey(ignore: true)
  _$$CountriesMealsImplCopyWith<_$CountriesMealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
