import 'package:flutter/material.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/coupon.png"),
        ),
      ),
      child: const Center(
        child: Text('قسيمة خصم 5%', style: TextStyle(fontSize: 10, color: Colors.white, ), textDirection: TextDirection.rtl),
      ),
    );
  }
}