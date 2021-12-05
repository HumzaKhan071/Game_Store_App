import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';
import 'package:game_store/Screens/Detail/widgets/game_info.dart';

import 'widgets/detail_delegate.dart';

class DetailPage extends StatelessWidget {
  final Game game;
  const DetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: DetailSliverDelegate(game, 360, 30)),
          SliverToBoxAdapter(
            child: Gameinfo(game: game),
          )
        ],
      ),
    );
  }
}
