import 'package:applover/app_main.dart';
import 'package:applover/injectable/injectable.dart';
import 'package:applover/observate_app.dart';
import 'package:applover/presentation/routing/router.gr.dart';
import 'package:flutter/material.dart';

Future<void> runMobileApp(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environment);
  observate(() => MyApp(MainRouter()));
}
