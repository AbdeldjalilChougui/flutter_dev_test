import 'package:flutter/material.dart';
import 'package:flutter_dev_test/ui/widgets/recat_button_widget.dart';

class ProductImageItem extends StatelessWidget {
  const ProductImageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 287,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        const Positioned(
          left: 20,
          top: 80,
          child: ReactButtonWidget(imagePath: 'assets/icons/love.png'),
        ),
        const Positioned(
          left: 20,
          top: 130,
          child: ReactButtonWidget(imagePath: 'assets/icons/reshare.png'),
        ),
        const Positioned(
          left: 20,
          top: 180,
          child: ReactButtonWidget(imagePath: 'assets/icons/share.png'),
        ),
      ],
    );
  }
}