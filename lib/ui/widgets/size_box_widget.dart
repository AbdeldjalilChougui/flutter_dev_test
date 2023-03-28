import 'package:flutter/cupertino.dart';
import 'package:styled_widget/styled_widget.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({
    Key? key,
    this.text,
    this.color,
  }) : super(key: key);
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
          border: Border.all(
            color: color!,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(text!, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, color: color!, fontWeight: FontWeight.w500)).center(),
    );
  }
}