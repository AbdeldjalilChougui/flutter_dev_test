import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    Key? key,
    this.isOdd,
  }) : super(key: key);
  final bool? isOdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isOdd! ? const Color(0xffF2F6FC) : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('White Musk, Cashmeran, Cedar', style: TextStyle(color: Color(0xff5f5f5f, ), fontSize: 12),),
          Text('نفحات قاعدية', style: TextStyle(color: Color(0xff5f5f5f, ), fontSize: 12),),
        ],
      ),
    );
  }
}