import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_test/ui/widgets/recat_button_widget.dart';
import 'package:styled_widget/styled_widget.dart';

class SuggestedItem extends StatelessWidget {
  const SuggestedItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 240,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffEDFAFA), width: 1.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/placeholder.png"),
              const Positioned(
                right: 10,
                top: 10,
                child: ReactButtonWidget(imagePath: 'assets/icons/love.png'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text('عطر رجالي', style: TextStyle(fontSize: 12, color: Color(0xff353535), fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          const Text('2500 ر.س', textDirection: TextDirection.rtl, style: TextStyle(fontSize: 12, color: Color(0xff353535), fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff3AC2CB),
              ),
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Text('إضافة للسلة', style: TextStyle(fontSize: 14, color: Color(0xff3AC2CB), fontWeight: FontWeight.w500),).center(),
          ),
        ],
      ),
    );
  }
}