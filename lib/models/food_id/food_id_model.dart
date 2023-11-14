import 'package:freezed_annotation/freezed_annotation.dart';

import 'food_meals/food_meals_model.dart';
part 'food_id_model.freezed.dart';
part 'food_id_model.g.dart';

@freezed
class FoodId with _$FoodId {
  const factory FoodId(List<FoodMeals>? meals) = _FoodId;

  factory FoodId.fromJson(Map<String, Object?> json) => _$FoodIdFromJson(json);
}
