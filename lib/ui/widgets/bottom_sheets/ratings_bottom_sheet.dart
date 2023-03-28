import 'package:flutter_dev_test/ui/widgets/big_stars_rating_wigdet.dart';
import 'package:flutter_dev_test/ui/widgets/rating_row.dart';
import 'package:flutter_dev_test/ui/widgets/starts_rating_widget.dart';
import 'package:flutter_dev_test/ui/widgets/user_rating_widget.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class RatingsBottomSheet extends StatelessWidget {
  const RatingsBottomSheet({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final Function? onTap;

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
                const Text("أضافة تقييم", style: TextStyle(fontSize: 14, color: Color(0xff3AC2CB), fontWeight: FontWeight.w500),).gestures(onTap: () => onTap!()),
                const Text("التقييمات", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
                const Icon(Icons.clear).gestures(onTap: () => Navigator.pop(context)),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 145,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffEFEFEF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      RatingRow(),
                      SizedBox(height: 5),
                      RatingRow(),
                      SizedBox(height: 5),
                      RatingRow(),
                      SizedBox(height: 5),
                      RatingRow(),
                      SizedBox(height: 5),
                      RatingRow(),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("4.5", style: TextStyle(fontSize: 24, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
                      BigStarsRatingWidget(),
                      Text("5 تقييمات", style: TextStyle(fontSize: 16, color: Color(0xff9A9A9A), ), textDirection: TextDirection.rtl),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                StarsRatingWidget(),
              ],
            ),
            const SizedBox(height: 10),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique. Massa cursus pellentesque laoreet dignissim lacus etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris.", textDirection: TextDirection.rtl, style: TextStyle(fontSize: 12, color: Color(0xff5F5F5F)),),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/rating_product.png"),
                const SizedBox(width: 10),
                Image.asset("assets/images/rating_product.png"),
                const SizedBox(width: 10),
                Image.asset("assets/images/rating_product.png"),
              ],
            ),
            const SizedBox(height: 10),
            const UserRateWidget(),
            const Divider(height: 40, thickness: 1.2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                StarsRatingWidget(),
              ],
            ),
            const SizedBox(height: 10),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique. Massa cursus pellentesque laoreet dignissim lacus etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris.", textDirection: TextDirection.rtl, style: TextStyle(fontSize: 12, color: Color(0xff5F5F5F)),),
            const SizedBox(height: 10),
            const UserRateWidget(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("متجر شانيل", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), ),),
                const SizedBox(width: 5),
                Image.asset("assets/icons/crown.png"),
                const SizedBox(width: 35,),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.7, child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique. Massa cursus pellentesque laoreet dignissim lacus etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris.", textDirection: TextDirection.rtl, style: TextStyle(fontSize: 12, color: Color(0xff5F5F5F)),)),
                const SizedBox(width: 56),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ).height(MediaQuery.of(context).size.height * 0.7);
  }
}