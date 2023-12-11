import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';

part 'presentation_state.dart';
part 'presentation_cubit.freezed.dart';

class PresentationCubit extends Cubit<PresentationState> {
  PresentationCubit({required this.moviesRepository})
      : super(PresentationState());

  final MoviesRepository moviesRepository;

  Future<void> getAllMoviesModels() async {
    emit(PresentationState(status: Status.loading));
    try {
      List<MovieModel> movieModel = await moviesRepository.getMoviesData();
      emit(
        PresentationState(
          status: Status.success,
          movieModel: movieModel,
        ),
      );
    } catch (error) {
      emit(
        PresentationState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> getMoviesModelsByYear(int year) async {
    emit(PresentationState(status: Status.loading));
    try {
      List<MovieModel> movieModel =
          await moviesRepository.getMoviesDataByYear(year.toString());
      emit(
        PresentationState(
          status: Status.success,
          movieModel: movieModel,
        ),
      );
    } catch (error) {
      emit(
        PresentationState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
