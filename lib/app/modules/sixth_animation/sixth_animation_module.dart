import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottiefiles_animations_flutter/app/modules/sixth_animation/presentation/sixth_animation_page.dart';

class SixthAnimationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) =>  const SixthAnimationPage()),
      ];
}
