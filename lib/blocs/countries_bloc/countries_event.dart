part of 'countries_bloc.dart';

abstract class CountriesEvent extends Equatable {
  const CountriesEvent();
}

class CountriesParsEvent extends CountriesEvent {
  const CountriesParsEvent();

  @override
  List<Object?> get props => [];
}
