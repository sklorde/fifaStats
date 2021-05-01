import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:fifa_stats/app/utils/fifaStatsColors.dart';
import 'package:fifa_stats/app/utils/string_extension.dart';
import 'package:fifa_stats/app/utils/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:implicitly_animated_list/implicitly_animated_list.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBarWidget extends StatefulWidget {
  final List<PlayerStats> players;
  final Widget body;

  const SearchBarWidget({Key key, this.players, this.body}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  List<PlayerStats> _suggestions;

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      hint: 'Search...',
      body: widget.body,
      borderRadius: BorderRadius.circular(8),
      iconColor: Colors.white,
      queryStyle: TextStyle(color: Colors.white),
      backgroundColor: FifaStatsColors.secundary,
      hintStyle: TextStyle(color: Colors.grey.shade400),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 550),
      onQueryChanged: (query) => onQueryChanged(query),
      builder: (context, _) {
        if (_suggestions == null)
          return Container();
        else
          return buildSearchBody();
      },
    );
  }

  onQueryChanged(String query) {
    if (query.length > 1) {
      _suggestions = widget.players
          .toList()
          .where(
              (player) => (player.name.toCompare()).contains(query.toCompare()))
          .toList();

      List<PlayerStats> shortNameList;

      shortNameList = widget.players
          .toList()
          .where((player) =>
              (player.shortName.toCompare()).contains(query.toCompare()))
          .toList();

      _suggestions.addAll(shortNameList);

      _suggestions = _suggestions.toSet().toList();
    } else {
      if (_suggestions.length != null) _suggestions.clear();
    }
    setState(() {});
  }

  buildSearchBody() {
    return Material(
      color: FifaStatsColors.secundary,
      borderRadius: BorderRadius.circular(8),
      child: ImplicitlyAnimatedList<PlayerStats>(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemData: _suggestions.toList().take(5).toList(),
        itemBuilder: (context, data) {
          return InkWell(
            splashColor: FifaStatsColors.tertiary,
            onTap: () {
              FloatingSearchBar.of(context).close();
              _suggestions.clear();
            },
            child: Container(
              height: 70,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: getOVRcolor(data.overallRating),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          data.overallRating.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 10),
                      child: SizedBox(
                        width: 30,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            data.primaryPosition.toLanguage(),
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          data.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
