import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/fifth_animation/fifth_animation_module.dart';
import 'package:lottiefiles_animations_flutter/app/modules/home/presentation/home_page.dart';

import '../second_animation/second_animation_module.dart';
import '../sixth_animation/sixth_animation_module.dart';
import '../third_animation/third_animation_module.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const HomePage()),
        ModuleRoute("/unlock_animation", module: SecondAnimationModule()),
        ModuleRoute("/email_success", module: ThirdAnimationModule()),
        ModuleRoute("/dog_steps", module: FifthAnimationModule()),
        ModuleRoute("/image_animation", module: SixthAnimationModule())
      ];
}
