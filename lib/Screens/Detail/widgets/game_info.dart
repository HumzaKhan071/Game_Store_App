import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';

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
        ],
      ),
    );
  }
}
