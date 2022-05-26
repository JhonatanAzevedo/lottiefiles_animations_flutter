import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/fifth_animation/fifth_animation_module.dart';
import 'package:lottiefiles_animations_flutter/app/modules/home/presentation/home_page.dart';

import '../fourth_animation/fourth_animation_module.dart';
import '../second_animation/second_animation_module.dart';
import '../sixth_animation/sixth_animation_module.dart';
import '../third_animation/third_animation_module.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const HomePage()),
        ModuleRoute("/second_animation", module: SecondAnimationModule()),
        ModuleRoute("/third_animation", module: ThirdAnimationModule()),
        ModuleRoute("/fourth_animation", module: FourthAnimationModule()),
        ModuleRoute("/fifth_animation", module: FifthAnimationModule()),
        ModuleRoute("/sixth_animation", module: SixthAnimationModule())
      ];
}
