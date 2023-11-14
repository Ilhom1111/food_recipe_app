import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/food_id/food_id_model.dart';
import '../../services/network_services.dart';

part 'food_id_event.dart';
part 'food_id_state.dart';

class FoodIdBloc extends Bloc<FoodIdEvent, FoodIdState> {
  FoodIdBloc() : super(FoodIdInitial()) {
    on<FoodIdParsEvent>(_parseFoodId);
  }

  void _parseFoodId(FoodIdParsEvent event, Emitter emit) async {
    emit(FoodIdLoading());
    final data = await NetworkServise.foodIdGet(id: event.id);
    FoodId foodId = NetworkServise.parseFoodId(data!);
    if (foodId.meals != null) {
      emit(CreateFoodIdSuccess(foodId));
    } else {
      emit(const FoodIdFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }
}
