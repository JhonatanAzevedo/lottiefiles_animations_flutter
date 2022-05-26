import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/fifth_animation/presentation/fifth_animation_page.dart';

import '../sixth_animation/sixth_animation_module.dart';

class FifthAnimationModule extends Module {
 @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const FifthAnimationPage()),
     ModuleRoute("/sixth_animation", module: SixthAnimationModule())
    
      ];
}