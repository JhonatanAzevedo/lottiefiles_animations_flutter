import 'package:flutter_modular/flutter_modular.dart';

import '../Image_animation/presentation/image_animation_page.dart';

class ImageAnimationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) =>  const ImageAnimationPage()),
      ];
}
