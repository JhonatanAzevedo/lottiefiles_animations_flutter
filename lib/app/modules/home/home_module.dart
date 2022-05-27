import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/home/presentation/home_page.dart';

import '../dog_steps/dog_steps_module.dart';
import '../email_success/email_success_module.dart';
import '../image_animation/image_animation_module.dart';
import '../like_button/like_button_module.dart';
import '../unlock_Animation/unlock_animation_module.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const HomePage()),
        ModuleRoute("/unlock_animation", module: UnlockAnimationModule()),
        ModuleRoute("/email_success", module: EmailSuccessModule()),
        ModuleRoute("/dog_steps", module: DogStepsModule()),
        ModuleRoute("/image_animation", module: ImageAnimationModule()),
        ModuleRoute("/like_button", module: LikeButtonModule()),
      ];
}
