import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/second_animation/presentation/second_animation_Page.dart';

import '../third_animation/third_animation_module.dart';

class SecondAnimationModule extends Module {
   @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const SecondAnimationPage()),
    ModuleRoute("/third_animation", module: ThirdAnimationModule()),
    
  ];
}