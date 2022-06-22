import 'package:flutter/material.dart';
import 'package:rpg/myapp/dices.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ViewHomeDice(),
    );
  }
}



