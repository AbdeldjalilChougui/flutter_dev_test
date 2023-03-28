import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_test/ui/widgets/scroll_icons.dart';

class ScrollRow extends StatelessWidget {
  const ScrollRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        ScrollIcons(),
        Text("يباع معها أيضًا", style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),),
      ],
    );
  }
}