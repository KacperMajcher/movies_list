import 'package:flutter/material.dart';
import 'package:movies_list/features/presentation/widgets/card/elements/cover.dart';
import 'package:movies_list/features/presentation/widgets/card/elements/description.dart';
import 'package:movies_list/features/presentation/widgets/card/elements/movie_title.dart';
import 'package:movies_list/features/presentation/widgets/card/elements/play_button.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.page,
    required this.title,
    required this.description,
  });

  final String page;
  final String title;
  final String description;

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
                    page: page,
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
                          title: title,
                          fontSize: 25,
                        ),
                        const SizedBox(height: 8),
                        Description(
                            description: description,
                            textColor: const Color.fromARGB(255, 165, 153, 153),
                            fontSize: 14),
                        const SizedBox(height: 30),
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
