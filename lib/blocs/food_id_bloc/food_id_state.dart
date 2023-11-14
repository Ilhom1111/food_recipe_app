part of 'food_id_bloc.dart';

abstract class FoodIdState extends Equatable {
  const FoodIdState();
}

class FoodIdLoading extends FoodIdState {
  @override
  List<Object> get props => [];
}

class FoodIdInitial extends FoodIdState {
  @override
  List<Object> get props => [];
}

class FoodIdFailure extends FoodIdState {
  final String message;

  const FoodIdFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateFoodIdSuccess extends FoodIdState {
  final FoodId food;
  const CreateFoodIdSuccess(this.food);
  @override
  List<Object> get props => [food];
}
