import 'package:flutter/cupertino.dart';

class StarsRatingWidget extends StatelessWidget {
  const StarsRatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/icons/star.png"),
        Image.asset("assets/icons/star.png"),
        Image.asset("assets/icons/star.png"),
        Image.asset("assets/icons/star.png"),
        Image.asset("assets/icons/star.png"),
      ],
    );
  }
}