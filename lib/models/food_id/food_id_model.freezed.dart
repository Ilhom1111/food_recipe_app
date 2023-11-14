// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodId _$FoodIdFromJson(Map<String, dynamic> json) {
  return _FoodId.fromJson(json);
}

/// @nodoc
mixin _$FoodId {
  List<FoodMeals>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodIdCopyWith<FoodId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodIdCopyWith<$Res> {
  factory $FoodIdCopyWith(FoodId value, $Res Function(FoodId) then) =
      _$FoodIdCopyWithImpl<$Res, FoodId>;
  @useResult
  $Res call({List<FoodMeals>? meals});
}

/// @nodoc
class _$FoodIdCopyWithImpl<$Res, $Val extends FoodId>
    implements $FoodIdCopyWith<$Res> {
  _$FoodIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<FoodMeals>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodIdImplCopyWith<$Res> implements $FoodIdCopyWith<$Res> {
  factory _$$FoodIdImplCopyWith(
          _$FoodIdImpl value, $Res Function(_$FoodIdImpl) then) =
      __$$FoodIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FoodMeals>? meals});
}

/// @nodoc
class __$$FoodIdImplCopyWithImpl<$Res>
    extends _$FoodIdCopyWithImpl<$Res, _$FoodIdImpl>
    implements _$$FoodIdImplCopyWith<$Res> {
  __$$FoodIdImplCopyWithImpl(
      _$FoodIdImpl _value, $Res Function(_$FoodIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$FoodIdImpl(
      freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<FoodMeals>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodIdImpl implements _FoodId {
  const _$FoodIdImpl(final List<FoodMeals>? meals) : _meals = meals;

  factory _$FoodIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodIdImplFromJson(json);

  final List<FoodMeals>? _meals;
  @override
  List<FoodMeals>? get meals {
    final value = _meals;
    if (value == null) return null;
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FoodId(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodIdImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodIdImplCopyWith<_$FoodIdImpl> get copyWith =>
      __$$FoodIdImplCopyWithImpl<_$FoodIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodIdImplToJson(
      this,
    );
  }
}

abstract class _FoodId implements FoodId {
  const factory _FoodId(final List<FoodMeals>? meals) = _$FoodIdImpl;

  factory _FoodId.fromJson(Map<String, dynamic> json) = _$FoodIdImpl.fromJson;

  @override
  List<FoodMeals>? get meals;
  @override
  @JsonKey(ignore: true)
  _$$FoodIdImplCopyWith<_$FoodIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
