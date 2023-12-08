import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super(const HomeState());

  final MoviesRepository _moviesRepository;

  //function retrieves an movie model and emits it as a state.
  Future<void> getMoviesModels() async {
    emit(const HomeState());
    try {
      final movieModel = await _moviesRepository.getMoviesData();

      emit(
        HomeState(
          movieModel: movieModel,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
