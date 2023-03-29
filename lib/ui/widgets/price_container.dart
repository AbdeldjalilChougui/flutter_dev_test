import 'package:flutter/material.dart';
import 'package:flutter_dev_test/ui/widgets/table_widget.dart';
import 'package:styled_widget/styled_widget.dart';

class PriceContainer extends StatefulWidget {
  const PriceContainer({Key? key}) : super(key: key);

  @override
  State<PriceContainer> createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  bool? isView = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isView! ? Image.asset("assets/icons/down.png").gestures(onTap: () {
                setState(() {
                  isView = false;
                });
              }) : const Icon(Icons.arrow_back_ios, size: 15, color: Colors.black54,).gestures(onTap: () {
                setState(() {
                  isView = true;
                });
              }),
              const Text("أسعار الجملة", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
            ],
          ),
          const SizedBox(height: 10),
          isView! ? const TableWidget() : const SizedBox(),
        ],
      ),
    ).height(isView! ? 255 : 50, animate: true).animate(const Duration(milliseconds: 200), Curves.easeIn);
  }
}