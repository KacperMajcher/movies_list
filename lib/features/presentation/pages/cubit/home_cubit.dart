import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.moviesRepository}) : super(HomeState());

  final MoviesRepository moviesRepository;

  //function retrieves an movie model and emits it as a state.
  Future<void> getMoviesModels(String year) async {
    emit(HomeState());
    try {
      List<MovieModel> movieModel;
      if (year == 'All') {
        movieModel = await moviesRepository.getMoviesData();
      } else {
        movieModel = await moviesRepository.getMoviesDataByYear(year);
      }
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
