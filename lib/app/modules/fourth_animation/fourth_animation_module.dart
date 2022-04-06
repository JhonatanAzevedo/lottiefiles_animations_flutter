import 'package:flutter_modular/flutter_modular.dart';
import '../fifth_animation/fifth_animation_module.dart';
import 'presentation/fourth_animation_page.dart';

class FourthAnimationModule extends Module {
 @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const FourthAnimationPage()),
     ModuleRoute("/fifth_animation", module: FifthAnimationModule())
      ];
}