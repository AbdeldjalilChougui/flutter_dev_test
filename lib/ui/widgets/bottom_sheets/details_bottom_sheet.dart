import 'package:flutter_dev_test/ui/widgets/image_widget.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class DetailsBottomSheet extends StatelessWidget {
  const DetailsBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40),),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 5,),
                const Text("التفاصيل", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
                const Icon(Icons.clear).gestures(onTap: () => Navigator.pop(context)),
              ],
            ),
            const SizedBox(height: 50),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique. Massa cursus pellentesque laoreet dignissim lacus etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris.", textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, color: Color(0xff9A9A9A)),),
            const SizedBox(height: 5),
            const ImageWidget(),
            const SizedBox(height: 12),
            const ImageWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ).height(MediaQuery.of(context).size.height * 0.7);
  }
}