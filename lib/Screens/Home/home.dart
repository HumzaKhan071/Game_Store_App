import 'package:flutter/material.dart';
import 'package:game_store/Screens/Home/widgets/search.dart';
import 'package:game_store/constants/colors.dart';

import 'widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                "assets/images/bg_liquid.png",
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  "assets/images/bg_liquid.png",
                  width: 200,
                ),
              ),
            ),
            Column(
              children:const  [
                Header(),
                Search()
              ],
            )
          ],
        ),
      ),
    );
  }
}
