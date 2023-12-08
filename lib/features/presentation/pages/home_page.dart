import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_list/features/presentation/pages/cubit/home_cubit.dart';
import 'package:movies_list/features/presentation/widgets/card/movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xE7161515),
          appBar: appBar(),
          body: ListView(
            children: [
              for (final movieModel in state
                  .movieModel) //For each movie model in the mocked data source, it creates a movie card on the home page
                MovieCard(
                  movieModel: movieModel,
                ),
            ],
          ),
        );
      },
    );
  }
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
        IconButton(
          onPressed: () {
            // implement items filter
          },
          icon: const Icon(Icons.search, size: 27, color: Colors.white),
        ),
      ],
    ),
  );
}
