import 'package:flutter_modular/flutter_modular.dart';

import 'info_controller.dart';

class InfoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InfoController()),
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<InfoModule>.of();
}
