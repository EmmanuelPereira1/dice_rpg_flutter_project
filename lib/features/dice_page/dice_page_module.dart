import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/features/dice_page/view/view_dice_page.dart';

class DicePageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => const ViewHomeDice()),
        ),
      ];
}
