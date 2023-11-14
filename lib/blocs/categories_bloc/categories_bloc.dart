import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/models/categories/categories_model.dart';
import 'package:food_recipe_app/services/network_services.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesEvent>(_parseCategories);
  }

  void _parseCategories(CategoriesEvent event, Emitter emit) async {
    emit(CategoriesLoading());
    final data = await NetworkServise.categoriesGet();
    Categories categories = NetworkServise.parseCategories(data!);
    if (categories.categories.isNotEmpty) {
      emit(CreateCategoriesSuccess(categories));
    } else {
      emit(const CategoriesFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }
}
