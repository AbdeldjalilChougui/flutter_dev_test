import 'package:flutter/material.dart';

class ScrollIcons extends StatelessWidget {
  const ScrollIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.arrow_back_ios, size: 15, color: Colors.black54,),
        SizedBox(width: 5),
        Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black54,),
      ],
    );
  }
}