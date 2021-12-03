import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
              cursorColor: kPrimary,
              decoration: InputDecoration(
                  fillColor: Color(0xFFF6F8FF),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none)))),
        ],
      ),
    );
  }
}
