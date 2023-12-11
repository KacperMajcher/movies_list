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

  Future<void> getAllMoviesModels() async {
    emit(HomeState(status: Status.loading));
    try {
      List<MovieModel> movieModel = await moviesRepository.getMoviesData();
      emit(
        HomeState(
          status: Status.success,
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

  Future<void> getMoviesModelsByYear(int year) async {
    emit(HomeState(status: Status.loading));
    try {
      List<MovieModel> movieModel =
          await moviesRepository.getMoviesDataByYear(year.toString());
      emit(
        HomeState(
          status: Status.success,
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
