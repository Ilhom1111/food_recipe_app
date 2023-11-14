// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_meals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Countries _$CountriesFromJson(Map<String, dynamic> json) {
  return _Countries.fromJson(json);
}

/// @nodoc
mixin _$Countries {
  List<CountriesMeals> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesCopyWith<Countries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCopyWith<$Res> {
  factory $CountriesCopyWith(Countries value, $Res Function(Countries) then) =
      _$CountriesCopyWithImpl<$Res, Countries>;
  @useResult
  $Res call({List<CountriesMeals> meals});
}

/// @nodoc
class _$CountriesCopyWithImpl<$Res, $Val extends Countries>
    implements $CountriesCopyWith<$Res> {
  _$CountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<CountriesMeals>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesImplCopyWith<$Res>
    implements $CountriesCopyWith<$Res> {
  factory _$$CountriesImplCopyWith(
          _$CountriesImpl value, $Res Function(_$CountriesImpl) then) =
      __$$CountriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountriesMeals> meals});
}

/// @nodoc
class __$$CountriesImplCopyWithImpl<$Res>
    extends _$CountriesCopyWithImpl<$Res, _$CountriesImpl>
    implements _$$CountriesImplCopyWith<$Res> {
  __$$CountriesImplCopyWithImpl(
      _$CountriesImpl _value, $Res Function(_$CountriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$CountriesImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<CountriesMeals>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesImpl implements _Countries {
  const _$CountriesImpl({required final List<CountriesMeals> meals})
      : _meals = meals;

  factory _$CountriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesImplFromJson(json);

  final List<CountriesMeals> _meals;
  @override
  List<CountriesMeals> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'Countries(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      __$$CountriesImplCopyWithImpl<_$CountriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesImplToJson(
      this,
    );
  }
}

abstract class _Countries implements Countries {
  const factory _Countries({required final List<CountriesMeals> meals}) =
      _$CountriesImpl;

  factory _Countries.fromJson(Map<String, dynamic> json) =
      _$CountriesImpl.fromJson;

  @override
  List<CountriesMeals> get meals;
  @override
  @JsonKey(ignore: true)
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
