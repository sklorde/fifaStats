import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'search_bar_controller.g.dart';

@Injectable()
class SearchBarController = _SearchBarControllerBase with _$SearchBarController;

abstract class _SearchBarControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
