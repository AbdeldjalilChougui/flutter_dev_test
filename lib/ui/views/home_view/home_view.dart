import 'package:flutter_dev_test/ui/widgets/bottom_sheets/details_bottom_sheet.dart';
import 'package:flutter_dev_test/ui/widgets/bottom_sheets/features_bottom_sheet.dart';
import 'package:flutter_dev_test/ui/widgets/bottom_sheets/rate_bottom_sheet.dart';
import 'package:flutter_dev_test/ui/widgets/bottom_sheets/ratings_bottom_sheet.dart';
import 'package:flutter_dev_test/ui/widgets/chanel_product.dart';
import 'package:flutter_dev_test/ui/widgets/costumized_app_bar.dart';
import 'package:flutter_dev_test/ui/widgets/coupon_widget.dart';
import 'package:flutter_dev_test/ui/widgets/details_widget.dart';
import 'package:flutter_dev_test/ui/widgets/features_widget.dart';
import 'package:flutter_dev_test/ui/widgets/floating_bottom_bar.dart';
import 'package:flutter_dev_test/ui/widgets/price_container.dart';
import 'package:flutter_dev_test/ui/widgets/price_discount_row.dart';
import 'package:flutter_dev_test/ui/widgets/product_image_item.dart';
import 'package:flutter_dev_test/ui/widgets/product_item.dart';
import 'package:flutter_dev_test/ui/widgets/ratings_row_widget.dart';
import 'package:flutter_dev_test/ui/widgets/ratings_widget.dart';
import 'package:flutter_dev_test/ui/widgets/scroll_row.dart';
import 'package:flutter_dev_test/ui/widgets/size_box_widget.dart';
import 'package:flutter_dev_test/ui/widgets/suggested_item.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key,});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int? selectedSize = 1;
  int? selectedProduct = 0;
  final scaffoldState = GlobalKey<ScaffoldState>();
  int? number = 1;
  bool? isCollapsed = false;

  decrement() {
    if (number! > 0) {
      setState(() {
        number = number! - 1;
      });
    }
  }

  increment() {
    setState(() {
      number = number! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const CustomizedAppBar(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("عطر شانيل 5 مل", style: TextStyle(fontSize: 18, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
                ],
              ),
              const SizedBox(height: 15),
              const ProductImageItem(),
              const SizedBox(height: 15),
              const RatingsRowWidget(),
              const SizedBox(height: 5),
              const PriceDiscountRow(),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("الكمية المتوفرة :10", style: TextStyle(fontSize: 12, color: Color(0xff9A9A9A), fontWeight: FontWeight.w500,), textDirection: TextDirection.rtl),
                  SizedBox(width: 12),
                  CouponWidget(),
                ],
              ),
              const Text("Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.", textDirection: TextDirection.rtl, style: TextStyle(color: Color(0xff9A9A9A)),),
              const SizedBox(height: 10),
              const PriceContainer(),
              const SizedBox(height: 25,),
              const DetailsWidget().gestures(onTap: () {
                setState(() {
                  isCollapsed = true;
                });
                final PersistentBottomSheetController<dynamic> bottomSheetController = scaffoldState.currentState!.showBottomSheet((context) => const DetailsBottomSheet());
                bottomSheetController.closed.then((value) {
                  setState(() {
                    isCollapsed = false;
                  });
                });
              }),
              const Divider(thickness: 1.5, height: 50),
              const FeaturesWidget().gestures(onTap: () {
                setState(() {
                  isCollapsed = true;
                });
                final PersistentBottomSheetController<dynamic> bottomSheetController = scaffoldState.currentState!.showBottomSheet((context) => const FeaturesBottomSheet());
                bottomSheetController.closed.then((value) {
                  setState(() {
                    isCollapsed = false;
                  });
                });
              }),
              const Divider(thickness: 1.5, height: 50),
              const RatingsWidget().gestures(onTap: () {
                setState(() {
                  isCollapsed = true;
                });
                final PersistentBottomSheetController<dynamic> bottomSheetController = scaffoldState.currentState!.showBottomSheet((context) => RatingsBottomSheet(onTap: () {
                  final PersistentBottomSheetController<dynamic> bottomSheetController2 = scaffoldState.currentState!.showBottomSheet((context) => const RateBottomSheet());
                  bottomSheetController2.closed.then((value) {
                    setState(() {
                      isCollapsed = false;
                    });
                  });
                }));
                bottomSheetController.closed.then((value) {
                  setState(() {
                    isCollapsed = false;
                  });
                });
              }),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("الحجم", style: TextStyle(fontSize: 16, color: Color(0xff5F5F5F), fontWeight: FontWeight.w500),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizeBoxWidget(text: '50 مل (250 SAR)', color: selectedSize == 1 ? const Color(0xff3AC2CB) : const Color(0xff9A9A9A)).gestures(onTap: () {
                    setState(() {
                      selectedSize = 1;
                    });
                  }),
                  SizeBoxWidget(text: '100 مل (500 SAR)', color: selectedSize == 2 ? const Color(0xff3AC2CB) : const Color(0xff9A9A9A),).gestures(onTap: () {
                    setState(() {
                      selectedSize = 2;
                    });
                  }),
                ],
              ),
              const SizedBox(height: 20,),
              const ScrollRow(),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 250,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: List.generate(5, (index) {
                          return ProductItem(index: index, selectedProduct: selectedProduct, onTap: () {
                            setState(() {
                              selectedProduct = index;
                            });
                          },);
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff3AC2CB),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("تحديد الكل", textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, color: Color(0xff3AC2CB), fontWeight: FontWeight.w500)).center(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/arrow_circle.png"),
                            const SizedBox(width: 24),
                            Image.asset("assets/icons/message.png"),
                          ],
                        ),
                        const ChanelProduct(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("متجر عطور وتجميل", style: TextStyle(fontSize: 12, color: Color(0xff5f5f5f), fontWeight: FontWeight.w500),),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("الدمام", style: TextStyle(fontSize: 12, color: Color(0xff5f5f5f), fontWeight: FontWeight.w500),),
                        const SizedBox(width: 5),
                        Image.asset("assets/icons/location.png"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff3AC2CB),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('متابعة', style: TextStyle(fontSize: 12, color: Color(0xff3AC2CB), fontWeight: FontWeight.w400),),
                              const SizedBox(width: 8,),
                              Image.asset("assets/icons/user.png"),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: const Color(0xff3AC2CB),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_back, color: Colors.white, size: 18),
                              SizedBox(width: 8,),
                              Text('زيارة المتجر', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('منتجات موصى بها من المتجر', style: TextStyle(fontSize: 16, color: Color(0xff353535), fontWeight: FontWeight.w500),).alignment(Alignment.centerRight),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SuggestedItem(),
                  SuggestedItem(),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
      floatingActionButton: isCollapsed! ? const SizedBox() : FloatingBottomBar(number: number, decrement: () {
        decrement();
      }, increment: () {
        increment();
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}