import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_list/app/injection_container.dart';
import 'package:movies_list/core/enums.dart';
import 'package:movies_list/features/presentation/pages/cubit/presentation_cubit.dart';
import 'package:movies_list/features/presentation/widgets/cards/movie_card/movie_card.dart';
import 'package:movies_list/features/presentation/widgets/cards/small_movie_card/small_movie_card.dart';
import 'package:movies_list/features/presentation/widgets/my_app_bar.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  bool _isSmallCard = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PresentationCubit>()..getAllMoviesModels(),
      child: Scaffold(
        backgroundColor: const Color(0xE7161515),
        appBar: MyAppBar(
          isSmallCard: _isSmallCard,
          onCardSizeChanged: (value) {
            setState(() {
              _isSmallCard = value;
            });
          },
        ),
        body: BlocBuilder<PresentationCubit, PresentationState>(
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
                    _isSmallCard
                        ? MovieCard(
                            movieModel: movieModel,
                          )
                        : SmallMovieCard(
                            movieModel: movieModel,
                          )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
