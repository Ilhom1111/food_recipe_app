import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/countries/countries_meals.dart';
import '../../services/network_services.dart';

part 'countries_event.dart';
part 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(CountriesInitial()) {
    on<CountriesEvent>(_parseCountries);
  }

  void _parseCountries(CountriesEvent event, Emitter emit) async {
    emit(CountriesLoading());
    final data = await NetworkServise.countriesGet();
    Countries countries = NetworkServise.parseCountries(data!);
    if (countries.meals.isNotEmpty) {
      emit(CreateCountriesSuccess(countries));
    } else {
      emit(const CountriesFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }
}
