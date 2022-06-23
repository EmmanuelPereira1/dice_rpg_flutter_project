import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/features/dice_page/dice_page_module.dart';
import 'package:rpg/features/info_page/info_page_module.dart';
import 'package:rpg/features/splash_screen/splash_module.dart';

class AppModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute('/homedice/', module: DicePageModule()),
        ModuleRoute('/infopage/', module: InfoPageModule()),
      ];
}