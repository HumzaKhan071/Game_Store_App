import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';
import 'package:game_store/Screens/Detail/widgets/game_desc.dart';
import 'package:game_store/Screens/Detail/widgets/game_gallery.dart';

import 'game_header.dart';

class Gameinfo extends StatelessWidget {
  final Game game;
  const Gameinfo({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameHeader(game:game),
          GameGallery(game: game,),
          GameDesc(game: game),
        ],
      ),
    );
  }
}
