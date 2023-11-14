// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodIdImpl _$$FoodIdImplFromJson(Map<String, dynamic> json) => _$FoodIdImpl(
      (json['meals'] as List<dynamic>?)
          ?.map((e) => FoodMeals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FoodIdImplToJson(_$FoodIdImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
