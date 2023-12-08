part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    this.movieModel = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<MovieModel> movieModel;
  final Status status;
  final String? errorMessage;
}
