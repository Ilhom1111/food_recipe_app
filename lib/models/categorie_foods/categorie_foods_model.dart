import 'package:freezed_annotation/freezed_annotation.dart';

import 'meals/meals_model.dart';
part 'categorie_foods_model.freezed.dart';
part 'categorie_foods_model.g.dart';

@freezed
class CategorieFoods with _$CategorieFoods {
  const factory CategorieFoods({required List<Meals> meals}) = _CategorieFoods;

  factory CategorieFoods.fromJson(Map<String, Object?> json) =>
      _$CategorieFoodsFromJson(json);
}
