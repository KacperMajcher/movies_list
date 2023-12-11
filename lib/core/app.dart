import 'package:flutter/material.dart';
import 'package:movies_list/features/presentation/pages/presentation_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PresentationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
