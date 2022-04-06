import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/home/presentation/home_page.dart';

import '../second_animation/second_animation_module.dart';

class HomeModule extends Module {
   @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const HomePage()),
    ModuleRoute("/second_animation", module: SecondAnimationModule()),
    
  ];
}