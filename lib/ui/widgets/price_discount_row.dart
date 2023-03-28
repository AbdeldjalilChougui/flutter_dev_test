import 'package:flutter/material.dart';

class PriceDiscountRow extends StatelessWidget {
  const PriceDiscountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text("خصم 20%", style: TextStyle(fontSize: 16, color: Color(0xff02B503), ), textDirection: TextDirection.rtl),
        SizedBox(width: 10),
        Text("25 ر.س", style: TextStyle(fontSize: 16, color: Color(0xff9A9A9A), decoration: TextDecoration.lineThrough),),
        SizedBox(width: 12),
        Text("25 ر.س", style: TextStyle(fontSize: 24, color: Color(0xff3AC2CB), fontWeight: FontWeight.w500,), textDirection: TextDirection.rtl),
      ],
    );
  }
}