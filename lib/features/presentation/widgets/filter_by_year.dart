import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/features/presentation/pages/cubit/home_cubit.dart';

class FilterByYear extends StatefulWidget {
  const FilterByYear({Key? key}) : super(key: key);

  @override
  FilterByYearState createState() => FilterByYearState();
}

class FilterByYearState extends State<FilterByYear> {
  String selectedYear = 'All';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        initialValue: selectedYear,
        onSelected: (String newValue) {
          setState(() {
            selectedYear = newValue; //changes displayed year value
            context.read<HomeCubit>().getMoviesModels(
                selectedYear); //calling getMoviesModels and passing selectedYear as argument
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
                  style: const TextStyle(color: Colors.black),
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
              style: const TextStyle(
                  color: Colors.white, fontSize: 10, letterSpacing: 2),
            )
          ],
        ));
  }
}
