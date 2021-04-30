import 'package:fifa_stats/app/shared/models/PlayerStats.dart';
import 'package:fifa_stats/app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:implicitly_animated_list/implicitly_animated_list.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBarWidget extends StatefulWidget {
  final List<PlayerStats> players;

  const SearchBarWidget({Key key, this.players}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  List<PlayerStats> _suggestions;

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      hint: 'Search...',
      transitionCurve: Curves.easeInOut,
      transition: CircularFloatingSearchBarTransition(),
      physics: BouncingScrollPhysics(),
      debounceDelay: Duration(milliseconds: 500),
      onQueryChanged: (query) {
        if (query.length > 1) {
          _suggestions = widget.players
              .toList()
              .where((player) =>
                  (player.name.toCompare()).contains(query.toCompare()))
              .toList();
        } else {
          _suggestions.clear();
        }
        setState(() {});
      },
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: Icon(Icons.search),
        ),
        FloatingSearchBarAction.searchToClear(showIfClosed: false),
      ],
      builder: (context, _) {
        if (_suggestions == null)
          return Container();
        else
          return Padding(
            padding: EdgeInsets.only(top: 16),
            child: Material(
              color: Colors.white,
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              child: ImplicitlyAnimatedList<PlayerStats>(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemData: _suggestions.toList().take(5).toList(),
                itemBuilder: (context, data) {
                  return Container(
                    height: 70,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(data.name),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
      },
    );
  }
}
