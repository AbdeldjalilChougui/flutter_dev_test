import 'package:flutter/cupertino.dart';

class UserRateWidget extends StatelessWidget {
  const UserRateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("4, أبريل , 2022", style: TextStyle(fontSize: 10, color: Color(0xff9A9A9A)), textDirection: TextDirection.rtl),
        const SizedBox(width: 10),
        const Text('أحمد', style: TextStyle(color: Color(0xff353535), fontSize: 16),),
        const SizedBox(width: 10),
        Image.asset("assets/images/user_rate.png"),
      ],
    );
  }
}