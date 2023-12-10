import 'package:flutter/material.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/description.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/movie_release.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/movie_title.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/play_button.dart';
import 'package:movies_list/features/presentation/widgets/card/small_movie_card/elements/poster.dart';

class SmallMovieCard extends StatelessWidget {
  const SmallMovieCard({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: [
          Expanded(
            child: Poster(
              posterPath: movieModel.posterPath,
              borderRadiusValue: 12,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitle(
                  title: movieModel.title,
                  fontSize: 20,
                ),
                const SizedBox(height: 1),
                MovieRelease(
                  release: movieModel.release,
                  fontSize: 12,
                ),
                const SizedBox(height: 5),
                Description(
                  description: movieModel.description,
                  textColor: const Color.fromARGB(255, 165, 153, 153),
                  fontSize: 13,
                  maxLines: 4,
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const PlayButton(
                      backgroundColor: Color(0xFF434141),
                      textColor: Colors.white,
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
