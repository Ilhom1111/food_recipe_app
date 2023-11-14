part of 'categorie_foods_bloc.dart';

abstract class CategorieFoodsEvent extends Equatable {
  const CategorieFoodsEvent();
}

class CategorieFoodsParsEvent extends CategorieFoodsEvent {
  final String categorie;
  const CategorieFoodsParsEvent(this.categorie);

  @override
  List<Object?> get props => [categorie];
}

class CountriesFoodsParsEvent extends CategorieFoodsEvent {
  final String countries;
  const CountriesFoodsParsEvent(this.countries);

  @override
  List<Object?> get props => [countries];
}
