import 'package:flutter/cupertino.dart';

class ChanelProduct extends StatelessWidget {
  const ChanelProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("متجر شانيل", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
        const SizedBox(width: 5),
        Image.asset("assets/icons/crown.png"),
        const SizedBox(width: 5),
        Image.asset("assets/icons/channel.png"),
      ],
    );
  }
}