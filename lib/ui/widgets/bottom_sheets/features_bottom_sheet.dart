import 'package:flutter_dev_test/ui/widgets/feature_item.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class FeaturesBottomSheet extends StatelessWidget {
  const FeaturesBottomSheet({
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
                const Text("الخصائص", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
                const Icon(Icons.clear).gestures(onTap: () => Navigator.pop(context)),
              ],
            ),
            const SizedBox(height: 50),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const FeatureItem(isOdd: true),
            const FeatureItem(isOdd: false),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ).height(MediaQuery.of(context).size.height * 0.7);
  }
}