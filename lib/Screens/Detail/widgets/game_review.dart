import 'package:flutter/material.dart';
import 'package:game_store/Models/game.dart';
import 'package:game_store/constants/colors.dart';

class GameReview extends StatelessWidget {
  final Game game;
  const GameReview({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ratings and Review",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("view",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.score.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStar(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${game.review.toString()} review",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(elevation: 0, primary: kPrimary,shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  "INSTALL",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          )
        ],
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
}
