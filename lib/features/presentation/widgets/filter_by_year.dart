import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/features/presentation/pages/cubit/presentation_cubit.dart';

class FilterByYear extends StatefulWidget {
  const FilterByYear({Key? key}) : super(key: key);

  @override
  FilterByYearState createState() => FilterByYearState();
}

class FilterByYearState extends State<FilterByYear> {
  String selectedYear = 'All';

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

    return PopupMenuButton(
      color: const Color(0xFF353533),
      initialValue: selectedYear,
      onSelected: (String newValue) {
        setState(() {
          selectedYear = newValue;
          if (newValue == 'All') {
            context.read<PresentationCubit>().getAllMoviesModels();
          } else {
            context
                .read<PresentationCubit>()
                .getMoviesModelsByYear(int.parse(newValue));
          }
        });
      },
      itemBuilder: (BuildContext context) {
        return ['All', '2023', '2022', '2021', '2020', '2019', '2018', '2017']
            .map<PopupMenuItem<String>>(
          (String value) {
            return PopupMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ).toList();
      },
      child: Column(
        children: [
          const Icon(
            Icons.calendar_month,
            color: Colors.white,
          ),
          Text(
            selectedYear,
            style: TextStyle(
                color: Colors.white,
                fontSize: dh * .011,
                letterSpacing: dw * .005),
          )
        ],
      ),
    );
  }
}
