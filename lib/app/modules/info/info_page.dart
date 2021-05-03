import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:fifa_stats/app/utils/fifaStatsColors.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

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
      backgroundColor: FifaStatsColors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: FifaStatsColors.primary,
        title: Text(widget.playerStats.shortName),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    widget.playerStats.photoUrl,
                  ),
                  radius: 100,
                  backgroundColor: FifaStatsColors.secundary,
                ),
                Spacer(),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: FifaStatsColors.secundary,
                      child: Image.network(
                        widget.playerStats.logos.country.url,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: FifaStatsColors.secundary,
                      child: Image.network(
                        widget.playerStats.logos.club.url,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
