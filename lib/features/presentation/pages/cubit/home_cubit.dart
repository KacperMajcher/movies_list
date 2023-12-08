import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/features/data/models/movie.dart';
import 'package:movies_list/features/data/repositories/movies_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super(const HomeState());

  final MoviesRepository _moviesRepository;

  //function retrieves an movie model and emits it as a state.
  Future<void> getMoviesModels() async {
    emit(const HomeState());
    final movieModel = await _moviesRepository.getArtistModels();

    emit(
      HomeState(
        movieModel: movieModel,
      ),
    );
  }
}
