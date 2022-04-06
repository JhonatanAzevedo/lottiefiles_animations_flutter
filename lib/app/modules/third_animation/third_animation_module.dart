import 'package:flutter_modular/flutter_modular.dart';

import '../fourth_animation/fourth_animation_module.dart';
import 'presentation/third_animation_page.dart';



class ThirdAnimationModule extends Module {
 @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const ThirdAnimationPage()),
    ModuleRoute("/fourth_animation", module: FourthAnimationModule())
      ];
}