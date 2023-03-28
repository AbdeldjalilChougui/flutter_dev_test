import 'package:flutter/cupertino.dart';

class RatingPercentWidget extends StatelessWidget {
  const RatingPercentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xffE0E0E0),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 5,
            width: 28,
            decoration: BoxDecoration(
              color: const Color(0xffA0A0A0),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}