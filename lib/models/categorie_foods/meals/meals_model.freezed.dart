// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meals _$MealsFromJson(Map<String, dynamic> json) {
  return _Meals.fromJson(json);
}

/// @nodoc
mixin _$Meals {
  String get strMeal => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;
  String get idMeal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealsCopyWith<Meals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsCopyWith<$Res> {
  factory $MealsCopyWith(Meals value, $Res Function(Meals) then) =
      _$MealsCopyWithImpl<$Res, Meals>;
  @useResult
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class _$MealsCopyWithImpl<$Res, $Val extends Meals>
    implements $MealsCopyWith<$Res> {
  _$MealsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = null,
    Object? strMealThumb = null,
    Object? idMeal = null,
  }) {
    return _then(_value.copyWith(
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealsImplCopyWith<$Res> implements $MealsCopyWith<$Res> {
  factory _$$MealsImplCopyWith(
          _$MealsImpl value, $Res Function(_$MealsImpl) then) =
      __$$MealsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class __$$MealsImplCopyWithImpl<$Res>
    extends _$MealsCopyWithImpl<$Res, _$MealsImpl>
    implements _$$MealsImplCopyWith<$Res> {
  __$$MealsImplCopyWithImpl(
      _$MealsImpl _value, $Res Function(_$MealsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = null,
    Object? strMealThumb = null,
    Object? idMeal = null,
  }) {
    return _then(_$MealsImpl(
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealsImpl implements _Meals {
  const _$MealsImpl(
      {required this.strMeal,
      required this.strMealThumb,
      required this.idMeal});

  factory _$MealsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealsImplFromJson(json);

  @override
  final String strMeal;
  @override
  final String strMealThumb;
  @override
  final String idMeal;

  @override
  String toString() {
    return 'Meals(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsImpl &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, strMeal, strMealThumb, idMeal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsImplCopyWith<_$MealsImpl> get copyWith =>
      __$$MealsImplCopyWithImpl<_$MealsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealsImplToJson(
      this,
    );
  }
}

abstract class _Meals implements Meals {
  const factory _Meals(
      {required final String strMeal,
      required final String strMealThumb,
      required final String idMeal}) = _$MealsImpl;

  factory _Meals.fromJson(Map<String, dynamic> json) = _$MealsImpl.fromJson;

  @override
  String get strMeal;
  @override
  String get strMealThumb;
  @override
  String get idMeal;
  @override
  @JsonKey(ignore: true)
  _$$MealsImplCopyWith<_$MealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
