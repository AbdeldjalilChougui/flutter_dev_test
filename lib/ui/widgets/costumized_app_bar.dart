import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Spacer(),
        Text("عطور وتجميل", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
        Spacer(),
        Icon(Icons.arrow_forward),
      ],
    );
  }
}