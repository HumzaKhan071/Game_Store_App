// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';
import 'package:game_store/constants/colors.dart';

class NewestGame extends StatelessWidget {
  final List<Game> ListGames = Game.generateGames();
  NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: ListGames.map((e) => Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      e.icon,
                      width: 60,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.type,
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              _buildStar(),
                            ],
                          ),
                          _buildButton(),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            )).toList(),
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];

    return Row(
        children: color
            .map((e) => Icon(
                  Icons.star,
                  size: 15,
                  color: e,
                ))
            .toList());
  }

  Widget _buildButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text("Install",style: TextStyle(
        color: Colors.white,
        
      ),),
    );
  }
}
