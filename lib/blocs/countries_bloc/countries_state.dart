part of 'countries_bloc.dart';

abstract class CountriesState extends Equatable {
  const CountriesState();
}

class CountriesLoading extends CountriesState {
  @override
  List<Object> get props => [];
}

class CountriesInitial extends CountriesState {
  @override
  List<Object> get props => [];
}

class CountriesFailure extends CountriesState {
  final String message;

  const CountriesFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateCountriesSuccess extends CountriesState {
  final Countries countries;
  const CreateCountriesSuccess(this.countries);
  @override
  List<Object> get props => [countries];
}
