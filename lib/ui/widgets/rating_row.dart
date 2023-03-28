import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_test/ui/widgets/rating_percent_widget.dart';
import 'package:flutter_dev_test/ui/widgets/starts_rating_widget.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('12', style: TextStyle(fontSize: 10, color: Color(0xff9A9A9A)), textDirection: TextDirection.rtl),
        SizedBox(width: 5),
        RatingPercentWidget(),
        SizedBox(width: 5),
        StarsRatingWidget(),
      ],
    );
  }
}