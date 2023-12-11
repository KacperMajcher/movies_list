import 'package:flutter/material.dart';
import 'package:movies_list/app/injection_container.dart';
import 'package:movies_list/core/app.dart';
import 'package:movies_list/core/config.dart';

void main() {
  Config.appFlavor = Flavor.production;
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}
