import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class RateBottomSheet extends StatefulWidget {
  const RateBottomSheet({Key? key}) : super(key: key);

  @override
  State<RateBottomSheet> createState() => _RateBottomSheetState();
}

class _RateBottomSheetState extends State<RateBottomSheet> {
  bool? isSelected = false;

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
                const Text("أضافة تقييم", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
                const Icon(Icons.clear).gestures(onTap: () => Navigator.pop(context)),
              ],
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RatingBar(
                  itemSize: 25,
                  initialRating: 0,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  ratingWidget: RatingWidget(
                    empty: Image.asset("assets/icons/big_star_non_filled.png",),
                    full: Image.asset("assets/icons/big_star.png",),
                    half: Image.asset("assets/icons/big_star.png",),
                  ),
                  itemCount: 5,
                  onRatingUpdate: (rating) {

                  },
                ),
                const SizedBox(width: 30),
                const Text("تقييمك", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("إضافة تقييم", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xffD1D1D6)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("إضافة صورة", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(17)
                  ),
                  child: Image.asset("assets/icons/gallery.png").center(),
                ),
                const SizedBox(width: 10),
                Image.asset("assets/images/big_img.png"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('هل تريد إخفاء هويتك', style: TextStyle(fontSize: 14, color: Color(0xff9A9A9A))),
                Image.asset(isSelected! ? "assets/icons/check.png" : "assets/icons/notcheck.png").gestures(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected!;
                      });
                    }
                ).padding(all: 5),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff3AC2CB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('إرسال تعليق', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),).center(),
            ).gestures(onTap: () {
              Navigator.pop(context);
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ).height(MediaQuery.of(context).size.height * 0.7);
  }
}