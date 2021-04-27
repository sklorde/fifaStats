import 'package:fifa_stats/app/utils/fifaStatsColors.dart';
import 'package:fifa_stats/app/widgets/card_player/card_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: FifaStatsColors.primary,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Observer(
            builder: (_) {
              return SmartRefresher(
                controller: controller.refreshController,
                enablePullDown: false,
                enablePullUp: false,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.players.length,
                  itemBuilder: (context, index) {
                    final player = controller.players[index];

                    return CardPlayerWidget(
                      player,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(padding: EdgeInsets.only(top: 15));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
