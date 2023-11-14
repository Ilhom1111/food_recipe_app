import 'package:freezed_annotation/freezed_annotation.dart';

import 'countries.dart';
part 'countries_meals.freezed.dart';
part 'countries_meals.g.dart';

@freezed
class Countries with _$Countries {
  const factory Countries({required List<CountriesMeals> meals}) = _Countries;

  factory Countries.fromJson(Map<String, Object?> json) =>
      _$CountriesFromJson(json);
}
