import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';

class GameHeader extends StatelessWidget {
  final Game game;
  const GameHeader({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                game.type,
                style: TextStyle(color: Colors.grey.withOpacity(0.5)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  _buildIconText(
                      game.score.toString(), Icons.star, Colors.amber),
                  SizedBox(
                    width: 30,
                  ),
                  _buildIconText("${game.donwload.toString()} k ",
                      Icons.file_download_outlined, Colors.red)
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconText(String text, IconData icon, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 15,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        )
      ],
    );
  }
}
