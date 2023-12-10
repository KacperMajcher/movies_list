import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_list/app/injection_container.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/presentation/pages/cubit/home_cubit.dart';
import 'package:movies_list/features/presentation/widgets/card/movie_card.dart';
import 'package:movies_list/features/presentation/widgets/filter_by_year.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(moviesRepository: getIt())..getMoviesModels('All'),
      child: Scaffold(
        backgroundColor: const Color(0xE7161515),
        appBar: appBar(),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state.status == Status.error) {
              final errorMessage = state.errorMessage ?? 'Unkown error';
              return SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              );
            } else if (state.movieModel.isEmpty) {
              return Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'There is nothing here',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Soon, the relevant items will appear here!',
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ]),
              );
            } else {
              return ListView(
                children: [
                  for (final movieModel in state.movieModel)
                    MovieCard(
                      movieModel: movieModel,
                    ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Text(
            'Movies',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          const FilterByYear(),
        ],
      ),
    );
  }
}
