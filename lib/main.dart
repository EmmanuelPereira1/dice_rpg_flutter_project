import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/app_modular.dart';
import 'myapp.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModular(),
      child: const MyApp(),
    ),
  );
}
