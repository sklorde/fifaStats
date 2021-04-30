import 'package:fifa_stats/app/modules/info/info_controller.dart';
import 'package:fifa_stats/app/modules/info/info_page.dart';
import 'package:fifa_stats/app/shared/repositories/player_repository.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerRepository()),
        Bind((i) => HomeController()),
        Bind((i) => InfoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
        ModularRouter('/info',
            child: (_, args) => InfoPage(
                  playerStats: args.data,
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
