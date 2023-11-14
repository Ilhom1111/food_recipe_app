part of 'categorie_foods_bloc.dart';

abstract class CategorieFoodsState extends Equatable {
  const CategorieFoodsState();
}

class CategorieFoodsLoading extends CategorieFoodsState {
  @override
  List<Object> get props => [];
}

class CategorieFoodsInitial extends CategorieFoodsState {
  @override
  List<Object> get props => [];
}

class CategorieFoodsFailure extends CategorieFoodsState {
  final String message;

  const CategorieFoodsFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateCategorieFoodsSuccess extends CategorieFoodsState {
  final CategorieFoods categorieFoods;
  const CreateCategorieFoodsSuccess(this.categorieFoods);
  @override
  List<Object> get props => [categorieFoods];
}

class CreateCountriesFoodsSuccess extends CategorieFoodsState {
  final CategorieFoods countries;
  const CreateCountriesFoodsSuccess(this.countries);
  @override
  List<Object> get props => [countries];
}
