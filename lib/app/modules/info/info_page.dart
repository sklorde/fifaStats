import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'info_controller.dart';

class InfoPage extends StatefulWidget {
  final PlayerStats playerStats;

  const InfoPage({
    @required this.playerStats,
  });

  @override
  InfoPageState createState() => InfoPageState();
}

class InfoPageState extends State<InfoPage> {
  final InfoController store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playerStats.shortName),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
