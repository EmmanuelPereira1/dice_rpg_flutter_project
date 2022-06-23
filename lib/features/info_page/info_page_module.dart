import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/features/info_page/view/info.dart';

class InfoPageModule extends Module {
  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: ((context, args) => const ViewInfoPage()),),
  ];
}