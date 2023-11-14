// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorie_foods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategorieFoodsImpl _$$CategorieFoodsImplFromJson(Map<String, dynamic> json) =>
    _$CategorieFoodsImpl(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategorieFoodsImplToJson(
        _$CategorieFoodsImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
