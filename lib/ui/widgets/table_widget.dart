import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: const [
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text("الخصم المستحق", style: TextStyle(fontSize: 14, color: Color(0xff353535), fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
            ),
            Text("السعر", style: TextStyle(fontSize: 14, color: Color(0xff353535), fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
            Text("الكمية/القطعة", style: TextStyle(fontSize: 14, color: Color(0xff353535), fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("30%", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),), textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            ),
            Text("10 ر.س", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            Text("1-10", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          children: [
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("30%", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),), textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            ),
            Text("10 ر.س", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            Text("1-10", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          children: [
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("30%", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),), textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            ),
            Text("10 ر.س", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            Text("1-10", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          children: [
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("30%", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),), textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            ),
            Text("10 ر.س", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            Text("1-10", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
          ],
        ),
        TableRow(
          children: [
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
            Divider(height: 5, thickness: 1.5),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("30%", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),), textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            ),
            Text("10 ر.س", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
            Text("1-10", style: TextStyle(fontSize: 14, color: Color(0xff5F5F5F),),textDirection: TextDirection.rtl, textAlign: TextAlign.center,),
          ],
        ),
      ],
    );
  }
}