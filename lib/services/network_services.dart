import 'dart:convert';
import 'dart:developer';
import 'package:food_recipe_app/models/categorie_foods/categorie_foods_model.dart';
import 'package:food_recipe_app/models/categories/categories_model.dart';
import 'package:food_recipe_app/models/countries/countries_meals.dart';
import 'package:food_recipe_app/models/food_id/food_id_model.dart';
import 'package:http/http.dart' as http;

import '../core/api.dart';

sealed class NetworkServise {
  static Future<String?> categoriesGet() async {
    try {
      final url = Uri.parse(Api.categorisApi);
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("categoriesGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> countriesGet() async {
    try {
      final url = Uri.parse(Api.countriesApi);
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("countriesGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> categorieFoodsGet({required String categorie}) async {
    try {
      final url = Uri.parse("${Api.categoriFoodsApi}$categorie");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("categorieFoodsGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> countriesFoodsGet({required String countries}) async {
    try {
      final url = Uri.parse("${Api.countriesFoodsApi}$countries");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("countriesFoodsGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> foodIdGet({required String id}) async {
    try {
      final url = Uri.parse("${Api.foodIdApi}$id");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("foodIdGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> searchGet({required String text}) async {
    try {
      final url = Uri.parse("${Api.searchApi}$text");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("searchGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Categories parseCategories(String data) {
    final json = jsonDecode(data);
    final categoriesData = Categories.fromJson(json);
    return categoriesData;
  }

  static Countries parseCountries(String data) {
    final json = jsonDecode(data);
    final countriesData = Countries.fromJson(json);
    return countriesData;
  }

  static CategorieFoods parseCategorieFoods(String data) {
    final json = jsonDecode(data);
    final categorieFoodsData = CategorieFoods.fromJson(json);
    return categorieFoodsData;
  }

  static FoodId parseFoodId(String data) {
    final json = jsonDecode(data);
    final foodIdData = FoodId.fromJson(json);
    return foodIdData;
  }

  static FoodId parseSearch(String data) {
    final json = jsonDecode(data);
    final searchData = FoodId.fromJson(json);
    return searchData;
  }
}
