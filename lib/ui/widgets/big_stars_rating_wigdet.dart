import 'package:flutter/material.dart';

class BigStarsRatingWidget extends StatelessWidget {
  const BigStarsRatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/icons/big_star_non_filled.png"),
        Image.asset("assets/icons/big_star.png"),
        Image.asset("assets/icons/big_star.png"),
        Image.asset("assets/icons/big_star.png"),
        Image.asset("assets/icons/big_star.png"),
      ],
    );
  }
}