import 'package:flutter_modular/flutter_modular.dart';

import '../Unlock_Animation/presentation/second_animation_page.dart';

class UnlockAnimationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const UnlockAnimationPage()),
      ];
}
