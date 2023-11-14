import 'package:freezed_annotation/freezed_annotation.dart';

import 'departments/departments_model.dart';
part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({required List<Departments> categories}) =
      _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
