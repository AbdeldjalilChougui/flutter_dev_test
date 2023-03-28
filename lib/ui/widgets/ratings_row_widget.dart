import 'package:flutter/material.dart';

class RatingsRowWidget extends StatelessWidget {
  const RatingsRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Text("5 تقييمات", style: TextStyle(fontSize: 12, color: Color(0xff9A9A9A)), textDirection: TextDirection.rtl),
        SizedBox(width: 5),
        Text("5.0", style: TextStyle(fontSize: 12, color: Color(0xffFFAA04), fontWeight: FontWeight.w500),),
        SizedBox(width: 1),
        Icon(Icons.star, color: Color(0xffFFAA04), size: 16),
      ],
    );
  }
}