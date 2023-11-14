// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_meals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesImpl _$$CountriesImplFromJson(Map<String, dynamic> json) =>
    _$CountriesImpl(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => CountriesMeals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountriesImplToJson(_$CountriesImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
