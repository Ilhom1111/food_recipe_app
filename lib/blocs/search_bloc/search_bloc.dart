import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/food_id/food_id_model.dart';
import '../../services/network_services.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchParsEvent>(_parseFoodId);
  }

  void _parseFoodId(SearchParsEvent event, Emitter emit) async {
    emit(SearchLoading());
    final data = await NetworkServise.searchGet(text: event.text);
    FoodId search = NetworkServise.parseSearch(data!);
    emit(CreateSearchSuccess(search));
  }
}
