import 'package:flutter/material.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/presentation/widgets/card/movie_card/elements/cover.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/description.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/movie_release.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/movie_title.dart';
import 'package:movies_list/features/presentation/widgets/card/shared_elements/play_button.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Cover(
                    cover: movieModel.cover,
                    borderRadiusValue: 12,
                  ),
                  const SizedBox(height: 13),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        MovieTitle(
                          title: movieModel.title,
                          fontSize: 25,
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
                            fontSize: 14,
                            maxLines: 3),
                        const SizedBox(height: 20),
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
            ],
          ),
        ],
      ),
    );
  }
}
