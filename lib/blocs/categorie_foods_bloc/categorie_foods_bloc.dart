import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/categorie_foods/categorie_foods_model.dart';
import '../../services/network_services.dart';

part 'categorie_foods_event.dart';
part 'categorie_foods_state.dart';

class CategorieFoodsBloc
    extends Bloc<CategorieFoodsEvent, CategorieFoodsState> {
  CategorieFoodsBloc() : super(CategorieFoodsInitial()) {
    on<CategorieFoodsParsEvent>(_parseCategorieFoods);
    on<CountriesFoodsParsEvent>(_parseCountriesFoods);
  }

  void _parseCategorieFoods(CategorieFoodsParsEvent event, Emitter emit) async {
    emit(CategorieFoodsLoading());
    final data =
        await NetworkServise.categorieFoodsGet(categorie: event.categorie);
    CategorieFoods categorieFoods = NetworkServise.parseCategorieFoods(data!);
    if (categorieFoods.meals.isNotEmpty) {
      emit(CreateCategorieFoodsSuccess(categorieFoods));
    } else {
      emit(const CategorieFoodsFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseCountriesFoods(CountriesFoodsParsEvent event, Emitter emit) async {
    emit(CategorieFoodsLoading());
    final data =
        await NetworkServise.countriesFoodsGet(countries: event.countries);
    CategorieFoods countries = NetworkServise.parseCategorieFoods(data!);
    if (countries.meals.isNotEmpty) {
      emit(CreateCountriesFoodsSuccess(countries));
    } else {
      emit(const CategorieFoodsFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }
}
