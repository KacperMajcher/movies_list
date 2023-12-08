import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/features/data/models/movie.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  //function retrieves an movie model and emits it as a state.
  Future<void> getMoviesList() async {
    final movieModel = MovieModel(
      page: 'assets/other/test.png',
      title: 'Arcane',
      description:
          'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
    );
    emit(
      HomeState(
        movieModel: movieModel,
      ),
    );
  }
}
