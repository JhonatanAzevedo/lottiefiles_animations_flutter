import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/second_animation_Page.dart';

class SecondAnimationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const SecondAnimationPage()),
      ];
}
