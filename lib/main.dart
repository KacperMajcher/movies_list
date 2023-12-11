import 'package:flutter/material.dart';
import 'package:movies_list/app/injection_container.dart';
import 'package:movies_list/core/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}
