import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset("assets/icons/arrow.png").padding(left: 10),
        const Text("التفاصيل", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
      ],
    );
  }
}