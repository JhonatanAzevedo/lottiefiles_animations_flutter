import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/like_button_page.dart';


class LikeButtonModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) =>  const LikeButtonPage()),
      ];
}