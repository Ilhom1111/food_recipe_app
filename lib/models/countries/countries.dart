import 'package:freezed_annotation/freezed_annotation.dart';
part 'countries.freezed.dart';
part 'countries.g.dart';

@freezed
class CountriesMeals with _$CountriesMeals {
  const factory CountriesMeals({required String strArea}) = _CountriesMeals;

  factory CountriesMeals.fromJson(Map<String, Object?> json) =>
      _$CountriesMealsFromJson(json);
}
