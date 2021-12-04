// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_store/Screens/Home/widgets/newest_game.dart';
import 'package:game_store/Screens/Home/widgets/popular_game.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);
  final List = [
    {
      "icon": Icons.track_changes_outlined,
      "color": Color(0xFF605CF4),
      "title": "Arcade",
    },
    {
      "icon": Icons.sports_motorsports_outlined,
      "color": Color(0xFFFC77A6),
      "title": "Racing",
    },
    {
      "icon": Icons.casino_outlined,
      "color": Color(0xFF4391FF),
      "title": "Strategy",
    },
    {
      "icon": Icons.sports_esports,
      "color": Color(0xFF7182F2),
      "title": "More",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: EdgeInsets.all(25),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: List[index]["color"] as Color,
                          ),
                          child: Icon(
                            List[index]["icon"] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          List[index]["title"] as String,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16),
                        )
                      ],
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 33,
                    ),
                itemCount: List.length),
          ),
          _buildTitle(
            "Popule game",
          ),
          PopularGame(),
          _buildTitle("Newest game"),
          NewestGame(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
