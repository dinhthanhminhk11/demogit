import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                "assets/images/icon2a.png",
              )),
        ],
      ),
    );
  }
}
