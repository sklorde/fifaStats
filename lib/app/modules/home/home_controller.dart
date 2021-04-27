import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:fifa_stats/app/shared/repositories/player_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final playerRepo = Modular.get<PlayerRepository>();
  final refreshController = RefreshController();

  @observable
  ObservableList<PlayerStats> players = <PlayerStats>[].asObservable();

  _HomeControllerBase() {
    onRefresh();
  }

  @action
  onRefresh() async {
    final list = await playerRepo.getPlayers();
    players = list.asObservable();
    refreshController.refreshCompleted();
  }

  @action
  onLoad() async {
    final list = await playerRepo.getPlayers();
    players.addAll(list.asObservable());
    refreshController.loadComplete();
  }
}
