import 'package:flutter/material.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:movies_list/features/presentation/widgets/cards/movie_card/cover.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/description.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/movie_release.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/movie_title.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/play_button.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: dh * .0155, horizontal: dw * .032),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: dh * .51,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(dh * .014),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Cover(
                    cover: movieModel.cover,
                    borderRadiusValue: dh * .014,
                  ),
                  SizedBox(height: dh * .0155),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: dw * .024),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: dw * .024),
                        MovieTitle(
                          title: movieModel.title,
                          fontSize: dh * .03,
                        ),
                        SizedBox(height: dh * .001),
                        MovieRelease(
                          release: movieModel.release,
                          fontSize: dh * .014,
                        ),
                        SizedBox(height: dh * .006),
                        Description(
                            description: movieModel.description,
                            textColor: const Color(0xFFA59999),
                            fontSize: dh * .017,
                            maxLines: 3),
                        SizedBox(height: dh * .024),
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
                                size: dh * .035,
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
