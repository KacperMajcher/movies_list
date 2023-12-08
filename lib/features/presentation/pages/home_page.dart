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
          backgroundColor: const Color.fromARGB(231, 22, 21, 21),
          appBar: appBar(),
          body: ListView(
            children: [
              MovieCard(
                  page: state.page,
                  title: state.title,
                  description: state.description),
              MovieCard(
                  page: state.page,
                  title: state.title,
                  description: state.description),
              MovieCard(
                  page: state.page,
                  title: state.title,
                  description: state.description),
              MovieCard(
                  page: state.page,
                  title: state.title,
                  description: state.description),
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
