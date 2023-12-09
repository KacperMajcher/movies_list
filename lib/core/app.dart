import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/app/injection_container.dart';
import 'package:movies_list/features/presentation/pages/cubit/home_cubit.dart';
import 'package:movies_list/features/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<HomeCubit>()..getMoviesModels(); //provides a list from cubit
      }, 
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
