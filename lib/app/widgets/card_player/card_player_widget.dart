import 'package:cached_network_image/cached_network_image.dart';
import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:fifa_stats/app/utils/fifaStatsColors.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:fifa_stats/app/utils/string_extension.dart';

class CardPlayerWidget extends StatelessWidget {
  final PlayerStats playerStats;

  const CardPlayerWidget(this.playerStats);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('click');
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: FifaStatsColors.secundary,
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                height: 64,
                width: 64,
                child: OctoImage(
                  image: CachedNetworkImageProvider(playerStats.photoUrl),
                  progressIndicatorBuilder: (context, progress) =>
                      CircularProgressIndicator(
                    backgroundColor: Color.fromRGBO(28, 39, 51, 0.9),
                  ),
                  errorBuilder: (context, error, stacktrace) =>
                      Icon(Icons.error),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playerStats.shortName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      playerStats.positions.cast().toString().toPosition(),
                      style: TextStyle(
                        color: Color.fromRGBO(143, 148, 155, 1),
                        fontSize: 15,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                playerStats.overallRating.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
