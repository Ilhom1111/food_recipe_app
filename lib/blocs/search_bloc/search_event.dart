part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchParsEvent extends SearchEvent {
  final String text;
  const SearchParsEvent(this.text);

  @override
  List<Object?> get props => [text];
}
