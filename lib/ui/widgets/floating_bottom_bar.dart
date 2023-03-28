import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class FloatingBottomBar extends StatelessWidget {
  const FloatingBottomBar({Key? key, this.number, this.decrement, this.increment}) : super(key: key);
  final int? number;
  final Function? increment;
  final Function? decrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/add_circle.png").gestures(onTap: () => increment!()),
              Text('$number', style: const TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
              Image.asset("assets/icons/minus_cirlce.png").gestures(onTap: () => decrement!()),
            ],
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.55,
          decoration: BoxDecoration(
            color: const Color(0xff3AC2CB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text('إضافة للسلة', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),).center(),
        ),
      ],
    ).padding(horizontal: 20);
  }
}