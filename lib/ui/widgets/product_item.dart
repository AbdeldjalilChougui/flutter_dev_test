import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key, this.selectedProduct, this.onTap, this.index}) : super(key: key);
  final int? selectedProduct;
  final int? index;
  final Function? onTap;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 140,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff3AC2CB), width: 1.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(widget.selectedProduct == widget.index ? "assets/icons/check.png" : "assets/icons/notcheck.png").gestures(onTap: () => widget.onTap!(),).padding(all: 5),
            ],
          ),
          const SizedBox(height: 5),
          Image.asset("assets/images/product.png"),
          const SizedBox(height: 5),
          const Text('علب تعبئة', style: TextStyle(fontSize: 10, color: Color(0xff353535), fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          const Text('10 ر.س', textDirection: TextDirection.rtl, style: TextStyle(fontSize: 10, color: Color(0xff353535), fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}