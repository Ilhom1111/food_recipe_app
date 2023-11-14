part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchLoading extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchFailure extends SearchState {
  final String message;

  const SearchFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateSearchSuccess extends SearchState {
  final FoodId food;
  const CreateSearchSuccess(this.food);
  @override
  List<Object> get props => [food];
}
