import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}