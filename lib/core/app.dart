import 'package:flutter/material.dart';
import 'package:movies_list/core/config.dart';
import 'package:movies_list/features/presentation/pages/presentation_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PresentationPage(),
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
    );
  }
}
