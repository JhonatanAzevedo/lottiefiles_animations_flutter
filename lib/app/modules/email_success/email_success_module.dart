import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/email_success_page.dart';

class EmailSuccessModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const EmailSuccessPage()),
      ];
}
