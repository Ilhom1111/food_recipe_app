// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorie_foods_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategorieFoods _$CategorieFoodsFromJson(Map<String, dynamic> json) {
  return _CategorieFoods.fromJson(json);
}

/// @nodoc
mixin _$CategorieFoods {
  List<Meals> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorieFoodsCopyWith<CategorieFoods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorieFoodsCopyWith<$Res> {
  factory $CategorieFoodsCopyWith(
          CategorieFoods value, $Res Function(CategorieFoods) then) =
      _$CategorieFoodsCopyWithImpl<$Res, CategorieFoods>;
  @useResult
  $Res call({List<Meals> meals});
}

/// @nodoc
class _$CategorieFoodsCopyWithImpl<$Res, $Val extends CategorieFoods>
    implements $CategorieFoodsCopyWith<$Res> {
  _$CategorieFoodsCopyWithImpl(this._value, this._then);

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
              as List<Meals>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorieFoodsImplCopyWith<$Res>
    implements $CategorieFoodsCopyWith<$Res> {
  factory _$$CategorieFoodsImplCopyWith(_$CategorieFoodsImpl value,
          $Res Function(_$CategorieFoodsImpl) then) =
      __$$CategorieFoodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meals> meals});
}

/// @nodoc
class __$$CategorieFoodsImplCopyWithImpl<$Res>
    extends _$CategorieFoodsCopyWithImpl<$Res, _$CategorieFoodsImpl>
    implements _$$CategorieFoodsImplCopyWith<$Res> {
  __$$CategorieFoodsImplCopyWithImpl(
      _$CategorieFoodsImpl _value, $Res Function(_$CategorieFoodsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$CategorieFoodsImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategorieFoodsImpl implements _CategorieFoods {
  const _$CategorieFoodsImpl({required final List<Meals> meals})
      : _meals = meals;

  factory _$CategorieFoodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategorieFoodsImplFromJson(json);

  final List<Meals> _meals;
  @override
  List<Meals> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'CategorieFoods(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorieFoodsImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorieFoodsImplCopyWith<_$CategorieFoodsImpl> get copyWith =>
      __$$CategorieFoodsImplCopyWithImpl<_$CategorieFoodsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategorieFoodsImplToJson(
      this,
    );
  }
}

abstract class _CategorieFoods implements CategorieFoods {
  const factory _CategorieFoods({required final List<Meals> meals}) =
      _$CategorieFoodsImpl;

  factory _CategorieFoods.fromJson(Map<String, dynamic> json) =
      _$CategorieFoodsImpl.fromJson;

  @override
  List<Meals> get meals;
  @override
  @JsonKey(ignore: true)
  _$$CategorieFoodsImplCopyWith<_$CategorieFoodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
