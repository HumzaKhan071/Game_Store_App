import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';

class GameHeader extends StatelessWidget {
  final Game game;
  const GameHeader({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
    );
  }
}
