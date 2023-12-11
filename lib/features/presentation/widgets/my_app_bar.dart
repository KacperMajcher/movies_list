import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_list/features/presentation/widgets/filter_by_year.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isSmallCard;
  final ValueChanged<bool> onCardSizeChanged;

  const MyAppBar({
    super.key,
    required this.isSmallCard,
    required this.onCardSizeChanged,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
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
            icon: const Icon(
              Icons.format_size,
              color: Colors.white,
            ),
            onPressed: () {
              onCardSizeChanged(!isSmallCard);
            },
          ),
          const FilterByYear(),
        ],
      ),
    );
  }
}
