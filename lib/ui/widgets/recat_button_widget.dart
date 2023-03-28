import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReactButtonWidget extends StatelessWidget {
  const ReactButtonWidget({
    Key? key,
    this.imagePath,
  }) : super(key: key);
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Center(child: Image.asset(imagePath!)),
    );
  }
}