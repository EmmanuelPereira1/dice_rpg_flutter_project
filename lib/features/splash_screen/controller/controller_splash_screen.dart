import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rpg/features/dice_page/view/view_dice_page.dart';
import '../../../core/generics/generic.dart';
part 'controller_splash_screen.g.dart';

class SplashScreenController = _SplashScreenController with _$SplashScreenController;

abstract class _SplashScreenController with Store {

@observable
Generic setupStatus = Generic.loading();

@action
Future <void> checkTokenValid(BuildContext context) async {
await Future.delayed(const Duration(seconds: 3));
  await Navigator.pushReplacement(context, 
  MaterialPageRoute(builder: 
  (context)=> const ViewHomeDice()));
}
  
}