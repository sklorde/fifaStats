import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_player_controller.g.dart';

@Injectable()
class CardPlayerController = _CardPlayerControllerBase
    with _$CardPlayerController;

abstract class _CardPlayerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
