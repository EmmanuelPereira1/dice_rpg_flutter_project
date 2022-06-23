import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/features/splash_screen/view/view_splash_screen.dart';

class SplashModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => const ViewSplashScreen()),
        ),
        
      ];
}
