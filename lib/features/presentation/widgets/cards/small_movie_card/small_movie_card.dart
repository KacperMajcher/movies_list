import 'package:flutter/material.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/description.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/movie_release.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/movie_title.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/play_button.dart';
import 'package:movies_list/features/presentation/widgets/cards/small_movie_card/poster.dart';

class SmallMovieCard extends StatelessWidget {
  const SmallMovieCard({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(dh * .0155),
      child: Row(
        children: [
          Expanded(
            child: Poster(
              posterPath: movieModel.posterPath,
              borderRadiusValue: dh * .015,
            ),
          ),
          SizedBox(width: dw * .032),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitle(
                  title: movieModel.title,
                  fontSize: dh * .024,
                ),
                SizedBox(height: dh * .001),
                MovieRelease(
                  release: movieModel.release,
                  fontSize: dh * .014,
                ),
                SizedBox(height: dh * .006),
                Description(
                  description: movieModel.description,
                  textColor: const Color.fromARGB(255, 165, 153, 153),
                  fontSize: dh * .0155,
                  maxLines: 4,
                ),
                SizedBox(height: dh * .008),
                Row(
                  children: [
                    const PlayButton(
                      backgroundColor: Color(0xFF434141),
                      textColor: Colors.white,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: dh * .036,
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
