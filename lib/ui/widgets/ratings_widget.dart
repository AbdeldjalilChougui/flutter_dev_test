import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class RatingsWidget extends StatelessWidget {
  const RatingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset("assets/icons/arrow.png").padding(left: 10),
        const Text("التقييمات", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
      ],
    );
  }
}