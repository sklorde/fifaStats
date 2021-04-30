import 'dart:async';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:flutter_modular/flutter_modular.dart';

List<PlayerStats> parsePlayers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<PlayerStats>((json) => PlayerStats.fromJson(json)).toList();
}

class PlayerRepository extends Disposable {
  Future<List<PlayerStats>> getPlayers() async {
    String data =
        await rootBundle.loadString('lib/app/assets/players_stats.json');

    return compute(parsePlayers, data);
  }

  @override
  void dispose() {}
}
