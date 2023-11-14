part of 'food_id_bloc.dart';

abstract class FoodIdEvent extends Equatable {
  const FoodIdEvent();
}

class FoodIdParsEvent extends FoodIdEvent {
  final String id;
  const FoodIdParsEvent(this.id);

  @override
  List<Object?> get props => [id];
}
