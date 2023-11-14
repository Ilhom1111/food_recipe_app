import 'package:freezed_annotation/freezed_annotation.dart';
part 'meals_model.freezed.dart';
part 'meals_model.g.dart';

@freezed
class Meals with _$Meals {
  const factory Meals(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal}) = _Meals;

  factory Meals.fromJson(Map<String, Object?> json) => _$MealsFromJson(json);
}
