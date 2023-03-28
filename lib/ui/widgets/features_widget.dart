import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset("assets/icons/arrow.png").padding(left: 10),
        const Text("الخصائص", style: TextStyle(color: Color(0xff5F5F5F),fontSize: 16, fontWeight: FontWeight.w500),),
      ],
    );
  }
}