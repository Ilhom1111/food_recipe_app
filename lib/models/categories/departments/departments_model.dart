import 'package:freezed_annotation/freezed_annotation.dart';
part 'departments_model.freezed.dart';
part 'departments_model.g.dart';

@freezed
class Departments with _$Departments {
  const factory Departments({
    required String idCategory,
    required String strCategory,
    required String strCategoryThumb,
    required String strCategoryDescription,
  }) = _Departments;

  factory Departments.fromJson(Map<String, dynamic> json) =>
      _$DepartmentsFromJson(json);
}
